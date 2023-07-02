module Bskyrb
  module AppBskyActorDefs
    class ProfileViewBasic
      attr_accessor :did

      attr_accessor :handle

      attr_accessor :displayName

      attr_accessor :avatar

      attr_accessor :viewer

      attr_accessor :labels

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:did=, hash["did"])

        instance.send(:handle=, hash["handle"])

        instance.send(:displayName=, hash["displayName"])

        instance.send(:avatar=, hash["avatar"])

        instance.send(:viewer=, hash["viewer"])

        instance.send(:labels=, hash["labels"])

        instance
      end
    end
  end

  module AppBskyActorDefs
    class ProfileView
      attr_accessor :did

      attr_accessor :handle

      attr_accessor :displayName

      attr_accessor :description

      attr_accessor :avatar

      attr_accessor :indexedAt

      attr_accessor :viewer

      attr_accessor :labels

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:did=, hash["did"])

        instance.send(:handle=, hash["handle"])

        instance.send(:displayName=, hash["displayName"])

        instance.send(:description=, hash["description"])

        instance.send(:avatar=, hash["avatar"])

        instance.send(:indexedAt=, hash["indexedAt"])

        instance.send(:viewer=, hash["viewer"])

        instance.send(:labels=, hash["labels"])

        instance
      end
    end
  end

  module AppBskyActorDefs
    class ProfileViewDetailed
      attr_accessor :did

      attr_accessor :handle

      attr_accessor :displayName

      attr_accessor :description

      attr_accessor :avatar

      attr_accessor :banner

      attr_accessor :followersCount

      attr_accessor :followsCount

      attr_accessor :postsCount

      attr_accessor :indexedAt

      attr_accessor :viewer

      attr_accessor :labels

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:did=, hash["did"])

        instance.send(:handle=, hash["handle"])

        instance.send(:displayName=, hash["displayName"])

        instance.send(:description=, hash["description"])

        instance.send(:avatar=, hash["avatar"])

        instance.send(:banner=, hash["banner"])

        instance.send(:followersCount=, hash["followersCount"])

        instance.send(:followsCount=, hash["followsCount"])

        instance.send(:postsCount=, hash["postsCount"])

        instance.send(:indexedAt=, hash["indexedAt"])

        instance.send(:viewer=, hash["viewer"])

        instance.send(:labels=, hash["labels"])

        instance
      end
    end
  end

  module AppBskyActorDefs
    class ViewerState
      attr_accessor :muted

      attr_accessor :mutedByList

      attr_accessor :blockedBy

      attr_accessor :blocking

      attr_accessor :following

      attr_accessor :followedBy

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:muted=, hash["muted"])

        instance.send(:mutedByList=, hash["mutedByList"])

        instance.send(:blockedBy=, hash["blockedBy"])

        instance.send(:blocking=, hash["blocking"])

        instance.send(:following=, hash["following"])

        instance.send(:followedBy=, hash["followedBy"])

        instance
      end
    end
  end

  module AppBskyActorDefs
    class Preferences
      attr_accessor :items

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:items=, hash["items"])

        instance
      end
    end
  end

  module AppBskyActorDefs
    class AdultContentPref
      attr_accessor :enabled

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:enabled=, hash["enabled"])

        instance
      end
    end
  end

  module AppBskyActorDefs
    class ContentLabelPref
      attr_accessor :label

      attr_accessor :visibility

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:label=, hash["label"])

        instance.send(:visibility=, hash["visibility"])

        instance
      end
    end
  end

  module AppBskyActorDefs
    class SavedFeedsPref
      attr_accessor :pinned

      attr_accessor :saved

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:pinned=, hash["pinned"])

        instance.send(:saved=, hash["saved"])

        instance
      end
    end
  end

  module AppBskyEmbedExternal
    class External
      attr_accessor :uri

      attr_accessor :title

      attr_accessor :description

      attr_accessor :thumb

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance.send(:title=, hash["title"])

        instance.send(:description=, hash["description"])

        instance.send(:thumb=, hash["thumb"])

        instance
      end
    end
  end

  module AppBskyEmbedExternal
    class View
      attr_accessor :external

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:external=, hash["external"])

        instance
      end
    end
  end

  module AppBskyEmbedExternal
    class ViewExternal
      attr_accessor :uri

      attr_accessor :title

      attr_accessor :description

      attr_accessor :thumb

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance.send(:title=, hash["title"])

        instance.send(:description=, hash["description"])

        instance.send(:thumb=, hash["thumb"])

        instance
      end
    end
  end

  module AppBskyEmbedImages
    class Image
      attr_accessor :image

      attr_accessor :alt

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:image=, hash["image"])

        instance.send(:alt=, hash["alt"])

        instance
      end
    end
  end

  module AppBskyEmbedImages
    class View
      attr_accessor :images

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:images=, hash["images"])

        instance
      end
    end
  end

  module AppBskyEmbedImages
    class ViewImage
      attr_accessor :thumb

      attr_accessor :fullsize

      attr_accessor :alt

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:thumb=, hash["thumb"])

        instance.send(:fullsize=, hash["fullsize"])

        instance.send(:alt=, hash["alt"])

        instance
      end
    end
  end

  module AppBskyEmbedRecord
    class View
      attr_accessor :record

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:record=, hash["record"])

        instance
      end
    end
  end

  module AppBskyEmbedRecord
    class ViewRecord
      attr_accessor :uri

      attr_accessor :cid

      attr_accessor :author

      attr_accessor :value

      attr_accessor :labels

      attr_accessor :embeds

      attr_accessor :indexedAt

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance.send(:cid=, hash["cid"])

        instance.send(:author=, hash["author"])

        instance.send(:value=, hash["value"])

        instance.send(:labels=, hash["labels"])

        instance.send(:embeds=, hash["embeds"])

        instance.send(:indexedAt=, hash["indexedAt"])

        instance
      end
    end
  end

  module AppBskyEmbedRecord
    class ViewNotFound
      attr_accessor :uri

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance
      end
    end
  end

  module AppBskyEmbedRecord
    class ViewBlocked
      attr_accessor :uri

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance
      end
    end
  end

  module AppBskyEmbedRecordwithmedia
    class View
      attr_accessor :record

      attr_accessor :media

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:record=, hash["record"])

        instance.send(:media=, hash["media"])

        instance
      end
    end
  end

  module AppBskyFeedDefs
    class PostView
      attr_accessor :uri

      attr_accessor :cid

      attr_accessor :author

      attr_accessor :record

      attr_accessor :embed

      attr_accessor :replyCount

      attr_accessor :repostCount

      attr_accessor :likeCount

      attr_accessor :indexedAt

      attr_accessor :viewer

      attr_accessor :labels

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance.send(:cid=, hash["cid"])

        instance.send(:author=, hash["author"])

        instance.send(:record=, hash["record"])

        instance.send(:embed=, hash["embed"])

        instance.send(:replyCount=, hash["replyCount"])

        instance.send(:repostCount=, hash["repostCount"])

        instance.send(:likeCount=, hash["likeCount"])

        instance.send(:indexedAt=, hash["indexedAt"])

        instance.send(:viewer=, hash["viewer"])

        instance.send(:labels=, hash["labels"])

        instance
      end
    end
  end

  module AppBskyFeedDefs
    class ViewerState
      attr_accessor :repost

      attr_accessor :like

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:repost=, hash["repost"])

        instance.send(:like=, hash["like"])

        instance
      end
    end
  end

  module AppBskyFeedDefs
    class FeedViewPost
      attr_accessor :post

      attr_accessor :reply

      attr_accessor :reason

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:post=, hash["post"])

        instance.send(:reply=, hash["reply"])

        instance.send(:reason=, hash["reason"])

        instance
      end
    end
  end

  module AppBskyFeedDefs
    class ReplyRef
      attr_accessor :root

      attr_accessor :parent

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:root=, hash["root"])

        instance.send(:parent=, hash["parent"])

        instance
      end
    end
  end

  module AppBskyFeedDefs
    class ReasonRepost
      attr_accessor :by

      attr_accessor :indexedAt

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:by=, hash["by"])

        instance.send(:indexedAt=, hash["indexedAt"])

        instance
      end
    end
  end

  module AppBskyFeedDefs
    class ThreadViewPost
      attr_accessor :post

      attr_accessor :parent

      attr_accessor :replies

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:post=, hash["post"])

        instance.send(:parent=, hash["parent"])

        instance.send(:replies=, hash["replies"])

        instance
      end
    end
  end

  module AppBskyFeedDefs
    class NotFoundPost
      attr_accessor :uri

      attr_accessor :notFound

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance.send(:notFound=, hash["notFound"])

        instance
      end
    end
  end

  module AppBskyFeedDefs
    class BlockedPost
      attr_accessor :uri

      attr_accessor :blocked

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance.send(:blocked=, hash["blocked"])

        instance
      end
    end
  end

  module AppBskyFeedDefs
    class GeneratorView
      attr_accessor :uri

      attr_accessor :cid

      attr_accessor :did

      attr_accessor :creator

      attr_accessor :displayName

      attr_accessor :description

      attr_accessor :descriptionFacets

      attr_accessor :avatar

      attr_accessor :likeCount

      attr_accessor :viewer

      attr_accessor :indexedAt

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance.send(:cid=, hash["cid"])

        instance.send(:did=, hash["did"])

        instance.send(:creator=, hash["creator"])

        instance.send(:displayName=, hash["displayName"])

        instance.send(:description=, hash["description"])

        instance.send(:descriptionFacets=, hash["descriptionFacets"])

        instance.send(:avatar=, hash["avatar"])

        instance.send(:likeCount=, hash["likeCount"])

        instance.send(:viewer=, hash["viewer"])

        instance.send(:indexedAt=, hash["indexedAt"])

        instance
      end
    end
  end

  module AppBskyFeedDefs
    class GeneratorViewerState
      attr_accessor :like

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:like=, hash["like"])

        instance
      end
    end
  end

  module AppBskyFeedDefs
    class SkeletonFeedPost
      attr_accessor :post

      attr_accessor :reason

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:post=, hash["post"])

        instance.send(:reason=, hash["reason"])

        instance
      end
    end
  end

  module AppBskyFeedDefs
    class SkeletonReasonRepost
      attr_accessor :repost

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:repost=, hash["repost"])

        instance
      end
    end
  end

  module AppBskyFeedDescribefeedgenerator
    class Feed
      attr_accessor :uri

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance
      end
    end
  end

  module AppBskyFeedDescribefeedgenerator
    class Links
      attr_accessor :privacyPolicy

      attr_accessor :termsOfService

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:privacyPolicy=, hash["privacyPolicy"])

        instance.send(:termsOfService=, hash["termsOfService"])

        instance
      end
    end
  end

  module AppBskyFeedGetlikes
    class Like
      attr_accessor :indexedAt

      attr_accessor :createdAt

      attr_accessor :actor

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:indexedAt=, hash["indexedAt"])

        instance.send(:createdAt=, hash["createdAt"])

        instance.send(:actor=, hash["actor"])

        instance
      end
    end
  end

  module AppBskyFeedPost
    class ReplyRef
      attr_accessor :root

      attr_accessor :parent

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:root=, hash["root"])

        instance.send(:parent=, hash["parent"])

        instance
      end
    end
  end

  module AppBskyFeedPost
    class Entity
      attr_accessor :index

      attr_accessor :value

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:index=, hash["index"])

        instance.send(:value=, hash["value"])

        instance
      end
    end
  end

  module AppBskyFeedPost
    class TextSlice
      attr_accessor :start

      attr_accessor :end

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:start=, hash["start"])

        instance.send(:end=, hash["end"])

        instance
      end
    end
  end

  module AppBskyGraphDefs
    class ListViewBasic
      attr_accessor :uri

      attr_accessor :cid

      attr_accessor :name

      attr_accessor :purpose

      attr_accessor :avatar

      attr_accessor :viewer

      attr_accessor :indexedAt

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance.send(:cid=, hash["cid"])

        instance.send(:name=, hash["name"])

        instance.send(:purpose=, hash["purpose"])

        instance.send(:avatar=, hash["avatar"])

        instance.send(:viewer=, hash["viewer"])

        instance.send(:indexedAt=, hash["indexedAt"])

        instance
      end
    end
  end

  module AppBskyGraphDefs
    class ListView
      attr_accessor :uri

      attr_accessor :cid

      attr_accessor :creator

      attr_accessor :name

      attr_accessor :purpose

      attr_accessor :description

      attr_accessor :descriptionFacets

      attr_accessor :avatar

      attr_accessor :viewer

      attr_accessor :indexedAt

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance.send(:cid=, hash["cid"])

        instance.send(:creator=, hash["creator"])

        instance.send(:name=, hash["name"])

        instance.send(:purpose=, hash["purpose"])

        instance.send(:description=, hash["description"])

        instance.send(:descriptionFacets=, hash["descriptionFacets"])

        instance.send(:avatar=, hash["avatar"])

        instance.send(:viewer=, hash["viewer"])

        instance.send(:indexedAt=, hash["indexedAt"])

        instance
      end
    end
  end

  module AppBskyGraphDefs
    class ListItemView
      attr_accessor :subject

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:subject=, hash["subject"])

        instance
      end
    end
  end

  module AppBskyGraphDefs
    class ListPurpose
      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        new
      end
    end
  end

  module AppBskyGraphDefs
    class Modlist
      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        new
      end
    end
  end

  module AppBskyGraphDefs
    class ListViewerState
      attr_accessor :muted

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:muted=, hash["muted"])

        instance
      end
    end
  end

  module AppBskyNotificationListnotifications
    class Notification
      attr_accessor :uri

      attr_accessor :cid

      attr_accessor :author

      attr_accessor :reason

      attr_accessor :reasonSubject

      attr_accessor :record

      attr_accessor :isRead

      attr_accessor :indexedAt

      attr_accessor :labels

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance.send(:cid=, hash["cid"])

        instance.send(:author=, hash["author"])

        instance.send(:reason=, hash["reason"])

        instance.send(:reasonSubject=, hash["reasonSubject"])

        instance.send(:record=, hash["record"])

        instance.send(:isRead=, hash["isRead"])

        instance.send(:indexedAt=, hash["indexedAt"])

        instance.send(:labels=, hash["labels"])

        instance
      end
    end
  end

  module AppBskyRichtextFacet
    class Mention
      attr_accessor :did

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:did=, hash["did"])

        instance
      end
    end
  end

  module AppBskyRichtextFacet
    class Link
      attr_accessor :uri

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance
      end
    end
  end

  module AppBskyRichtextFacet
    class ByteSlice
      attr_accessor :byteStart

      attr_accessor :byteEnd

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:byteStart=, hash["byteStart"])

        instance.send(:byteEnd=, hash["byteEnd"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class ActionView
      attr_accessor :id

      attr_accessor :action

      attr_accessor :subject

      attr_accessor :subjectBlobCids

      attr_accessor :createLabelVals

      attr_accessor :negateLabelVals

      attr_accessor :reason

      attr_accessor :createdBy

      attr_accessor :createdAt

      attr_accessor :reversal

      attr_accessor :resolvedReportIds

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:id=, hash["id"])

        instance.send(:action=, hash["action"])

        instance.send(:subject=, hash["subject"])

        instance.send(:subjectBlobCids=, hash["subjectBlobCids"])

        instance.send(:createLabelVals=, hash["createLabelVals"])

        instance.send(:negateLabelVals=, hash["negateLabelVals"])

        instance.send(:reason=, hash["reason"])

        instance.send(:createdBy=, hash["createdBy"])

        instance.send(:createdAt=, hash["createdAt"])

        instance.send(:reversal=, hash["reversal"])

        instance.send(:resolvedReportIds=, hash["resolvedReportIds"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class ActionViewDetail
      attr_accessor :id

      attr_accessor :action

      attr_accessor :subject

      attr_accessor :subjectBlobs

      attr_accessor :createLabelVals

      attr_accessor :negateLabelVals

      attr_accessor :reason

      attr_accessor :createdBy

      attr_accessor :createdAt

      attr_accessor :reversal

      attr_accessor :resolvedReports

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:id=, hash["id"])

        instance.send(:action=, hash["action"])

        instance.send(:subject=, hash["subject"])

        instance.send(:subjectBlobs=, hash["subjectBlobs"])

        instance.send(:createLabelVals=, hash["createLabelVals"])

        instance.send(:negateLabelVals=, hash["negateLabelVals"])

        instance.send(:reason=, hash["reason"])

        instance.send(:createdBy=, hash["createdBy"])

        instance.send(:createdAt=, hash["createdAt"])

        instance.send(:reversal=, hash["reversal"])

        instance.send(:resolvedReports=, hash["resolvedReports"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class ActionViewCurrent
      attr_accessor :id

      attr_accessor :action

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:id=, hash["id"])

        instance.send(:action=, hash["action"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class ActionReversal
      attr_accessor :reason

      attr_accessor :createdBy

      attr_accessor :createdAt

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:reason=, hash["reason"])

        instance.send(:createdBy=, hash["createdBy"])

        instance.send(:createdAt=, hash["createdAt"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class ActionType
      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        new
      end
    end
  end

  module ComAtprotoAdminDefs
    class Takedown
      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        new
      end
    end
  end

  module ComAtprotoAdminDefs
    class Flag
      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        new
      end
    end
  end

  module ComAtprotoAdminDefs
    class Acknowledge
      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        new
      end
    end
  end

  module ComAtprotoAdminDefs
    class Escalate
      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        new
      end
    end
  end

  module ComAtprotoAdminDefs
    class ReportView
      attr_accessor :id

      attr_accessor :reasonType

      attr_accessor :reason

      attr_accessor :subjectRepoHandle

      attr_accessor :subject

      attr_accessor :reportedBy

      attr_accessor :createdAt

      attr_accessor :resolvedByActionIds

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:id=, hash["id"])

        instance.send(:reasonType=, hash["reasonType"])

        instance.send(:reason=, hash["reason"])

        instance.send(:subjectRepoHandle=, hash["subjectRepoHandle"])

        instance.send(:subject=, hash["subject"])

        instance.send(:reportedBy=, hash["reportedBy"])

        instance.send(:createdAt=, hash["createdAt"])

        instance.send(:resolvedByActionIds=, hash["resolvedByActionIds"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class ReportViewDetail
      attr_accessor :id

      attr_accessor :reasonType

      attr_accessor :reason

      attr_accessor :subject

      attr_accessor :reportedBy

      attr_accessor :createdAt

      attr_accessor :resolvedByActions

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:id=, hash["id"])

        instance.send(:reasonType=, hash["reasonType"])

        instance.send(:reason=, hash["reason"])

        instance.send(:subject=, hash["subject"])

        instance.send(:reportedBy=, hash["reportedBy"])

        instance.send(:createdAt=, hash["createdAt"])

        instance.send(:resolvedByActions=, hash["resolvedByActions"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class RepoView
      attr_accessor :did

      attr_accessor :handle

      attr_accessor :email

      attr_accessor :relatedRecords

      attr_accessor :indexedAt

      attr_accessor :moderation

      attr_accessor :invitedBy

      attr_accessor :invitesDisabled

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:did=, hash["did"])

        instance.send(:handle=, hash["handle"])

        instance.send(:email=, hash["email"])

        instance.send(:relatedRecords=, hash["relatedRecords"])

        instance.send(:indexedAt=, hash["indexedAt"])

        instance.send(:moderation=, hash["moderation"])

        instance.send(:invitedBy=, hash["invitedBy"])

        instance.send(:invitesDisabled=, hash["invitesDisabled"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class RepoViewDetail
      attr_accessor :did

      attr_accessor :handle

      attr_accessor :email

      attr_accessor :relatedRecords

      attr_accessor :indexedAt

      attr_accessor :moderation

      attr_accessor :labels

      attr_accessor :invitedBy

      attr_accessor :invites

      attr_accessor :invitesDisabled

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:did=, hash["did"])

        instance.send(:handle=, hash["handle"])

        instance.send(:email=, hash["email"])

        instance.send(:relatedRecords=, hash["relatedRecords"])

        instance.send(:indexedAt=, hash["indexedAt"])

        instance.send(:moderation=, hash["moderation"])

        instance.send(:labels=, hash["labels"])

        instance.send(:invitedBy=, hash["invitedBy"])

        instance.send(:invites=, hash["invites"])

        instance.send(:invitesDisabled=, hash["invitesDisabled"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class RepoViewNotFound
      attr_accessor :did

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:did=, hash["did"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class RepoRef
      attr_accessor :did

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:did=, hash["did"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class RecordView
      attr_accessor :uri

      attr_accessor :cid

      attr_accessor :value

      attr_accessor :blobCids

      attr_accessor :indexedAt

      attr_accessor :moderation

      attr_accessor :repo

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance.send(:cid=, hash["cid"])

        instance.send(:value=, hash["value"])

        instance.send(:blobCids=, hash["blobCids"])

        instance.send(:indexedAt=, hash["indexedAt"])

        instance.send(:moderation=, hash["moderation"])

        instance.send(:repo=, hash["repo"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class RecordViewDetail
      attr_accessor :uri

      attr_accessor :cid

      attr_accessor :value

      attr_accessor :blobs

      attr_accessor :labels

      attr_accessor :indexedAt

      attr_accessor :moderation

      attr_accessor :repo

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance.send(:cid=, hash["cid"])

        instance.send(:value=, hash["value"])

        instance.send(:blobs=, hash["blobs"])

        instance.send(:labels=, hash["labels"])

        instance.send(:indexedAt=, hash["indexedAt"])

        instance.send(:moderation=, hash["moderation"])

        instance.send(:repo=, hash["repo"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class RecordViewNotFound
      attr_accessor :uri

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class Moderation
      attr_accessor :currentAction

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:currentAction=, hash["currentAction"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class ModerationDetail
      attr_accessor :currentAction

      attr_accessor :actions

      attr_accessor :reports

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:currentAction=, hash["currentAction"])

        instance.send(:actions=, hash["actions"])

        instance.send(:reports=, hash["reports"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class BlobView
      attr_accessor :cid

      attr_accessor :mimeType

      attr_accessor :size

      attr_accessor :createdAt

      attr_accessor :details

      attr_accessor :moderation

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:cid=, hash["cid"])

        instance.send(:mimeType=, hash["mimeType"])

        instance.send(:size=, hash["size"])

        instance.send(:createdAt=, hash["createdAt"])

        instance.send(:details=, hash["details"])

        instance.send(:moderation=, hash["moderation"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class ImageDetails
      attr_accessor :width

      attr_accessor :height

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:width=, hash["width"])

        instance.send(:height=, hash["height"])

        instance
      end
    end
  end

  module ComAtprotoAdminDefs
    class VideoDetails
      attr_accessor :width

      attr_accessor :height

      attr_accessor :length

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:width=, hash["width"])

        instance.send(:height=, hash["height"])

        instance.send(:length=, hash["length"])

        instance
      end
    end
  end

  module ComAtprotoLabelDefs
    class Label
      attr_accessor :src

      attr_accessor :uri

      attr_accessor :cid

      attr_accessor :val

      attr_accessor :neg

      attr_accessor :cts

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:src=, hash["src"])

        instance.send(:uri=, hash["uri"])

        instance.send(:cid=, hash["cid"])

        instance.send(:val=, hash["val"])

        instance.send(:neg=, hash["neg"])

        instance.send(:cts=, hash["cts"])

        instance
      end
    end
  end

  module ComAtprotoLabelSubscribelabels
    class Labels
      attr_accessor :seq

      attr_accessor :labels

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:seq=, hash["seq"])

        instance.send(:labels=, hash["labels"])

        instance
      end
    end
  end

  module ComAtprotoLabelSubscribelabels
    class Info
      attr_accessor :name

      attr_accessor :message

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:name=, hash["name"])

        instance.send(:message=, hash["message"])

        instance
      end
    end
  end

  module ComAtprotoModerationDefs
    class ReasonType
      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        new
      end
    end
  end

  module ComAtprotoModerationDefs
    class ReasonSpam
      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        new
      end
    end
  end

  module ComAtprotoModerationDefs
    class ReasonViolation
      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        new
      end
    end
  end

  module ComAtprotoModerationDefs
    class ReasonMisleading
      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        new
      end
    end
  end

  module ComAtprotoModerationDefs
    class ReasonSexual
      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        new
      end
    end
  end

  module ComAtprotoModerationDefs
    class ReasonRude
      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        new
      end
    end
  end

  module ComAtprotoModerationDefs
    class ReasonOther
      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        new
      end
    end
  end

  module ComAtprotoRepoApplywrites
    class Create
      attr_accessor :collection

      attr_accessor :rkey

      attr_accessor :value

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:collection=, hash["collection"])

        instance.send(:rkey=, hash["rkey"])

        instance.send(:value=, hash["value"])

        instance
      end
    end
  end

  module ComAtprotoRepoApplywrites
    class Update
      attr_accessor :collection

      attr_accessor :rkey

      attr_accessor :value

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:collection=, hash["collection"])

        instance.send(:rkey=, hash["rkey"])

        instance.send(:value=, hash["value"])

        instance
      end
    end
  end

  module ComAtprotoRepoApplywrites
    class Delete
      attr_accessor :collection

      attr_accessor :rkey

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:collection=, hash["collection"])

        instance.send(:rkey=, hash["rkey"])

        instance
      end
    end
  end

  module ComAtprotoRepoListrecords
    class Record
      attr_accessor :uri

      attr_accessor :cid

      attr_accessor :value

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance.send(:cid=, hash["cid"])

        instance.send(:value=, hash["value"])

        instance
      end
    end
  end

  module ComAtprotoServerCreateapppassword
    class AppPassword
      attr_accessor :name

      attr_accessor :password

      attr_accessor :createdAt

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:name=, hash["name"])

        instance.send(:password=, hash["password"])

        instance.send(:createdAt=, hash["createdAt"])

        instance
      end
    end
  end

  module ComAtprotoServerCreateinvitecodes
    class AccountCodes
      attr_accessor :account

      attr_accessor :codes

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:account=, hash["account"])

        instance.send(:codes=, hash["codes"])

        instance
      end
    end
  end

  module ComAtprotoServerDefs
    class InviteCode
      attr_accessor :code

      attr_accessor :available

      attr_accessor :disabled

      attr_accessor :forAccount

      attr_accessor :createdBy

      attr_accessor :createdAt

      attr_accessor :uses

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:code=, hash["code"])

        instance.send(:available=, hash["available"])

        instance.send(:disabled=, hash["disabled"])

        instance.send(:forAccount=, hash["forAccount"])

        instance.send(:createdBy=, hash["createdBy"])

        instance.send(:createdAt=, hash["createdAt"])

        instance.send(:uses=, hash["uses"])

        instance
      end
    end
  end

  module ComAtprotoServerDefs
    class InviteCodeUse
      attr_accessor :usedBy

      attr_accessor :usedAt

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:usedBy=, hash["usedBy"])

        instance.send(:usedAt=, hash["usedAt"])

        instance
      end
    end
  end

  module ComAtprotoServerDescribeserver
    class Links
      attr_accessor :privacyPolicy

      attr_accessor :termsOfService

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:privacyPolicy=, hash["privacyPolicy"])

        instance.send(:termsOfService=, hash["termsOfService"])

        instance
      end
    end
  end

  module ComAtprotoServerListapppasswords
    class AppPassword
      attr_accessor :name

      attr_accessor :createdAt

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:name=, hash["name"])

        instance.send(:createdAt=, hash["createdAt"])

        instance
      end
    end
  end

  module ComAtprotoSyncListrepos
    class Repo
      attr_accessor :did

      attr_accessor :head

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:did=, hash["did"])

        instance.send(:head=, hash["head"])

        instance
      end
    end
  end

  module ComAtprotoSyncSubscriberepos
    class Commit
      attr_accessor :seq

      attr_accessor :rebase

      attr_accessor :tooBig

      attr_accessor :repo

      attr_accessor :commit

      attr_accessor :prev

      attr_accessor :blocks

      attr_accessor :ops

      attr_accessor :blobs

      attr_accessor :time

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:seq=, hash["seq"])

        instance.send(:rebase=, hash["rebase"])

        instance.send(:tooBig=, hash["tooBig"])

        instance.send(:repo=, hash["repo"])

        instance.send(:commit=, hash["commit"])

        instance.send(:prev=, hash["prev"])

        instance.send(:blocks=, hash["blocks"])

        instance.send(:ops=, hash["ops"])

        instance.send(:blobs=, hash["blobs"])

        instance.send(:time=, hash["time"])

        instance
      end
    end
  end

  module ComAtprotoSyncSubscriberepos
    class Handle
      attr_accessor :seq

      attr_accessor :did

      attr_accessor :handle

      attr_accessor :time

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:seq=, hash["seq"])

        instance.send(:did=, hash["did"])

        instance.send(:handle=, hash["handle"])

        instance.send(:time=, hash["time"])

        instance
      end
    end
  end

  module ComAtprotoSyncSubscriberepos
    class Migrate
      attr_accessor :seq

      attr_accessor :did

      attr_accessor :migrateTo

      attr_accessor :time

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:seq=, hash["seq"])

        instance.send(:did=, hash["did"])

        instance.send(:migrateTo=, hash["migrateTo"])

        instance.send(:time=, hash["time"])

        instance
      end
    end
  end

  module ComAtprotoSyncSubscriberepos
    class Tombstone
      attr_accessor :seq

      attr_accessor :did

      attr_accessor :time

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:seq=, hash["seq"])

        instance.send(:did=, hash["did"])

        instance.send(:time=, hash["time"])

        instance
      end
    end
  end

  module ComAtprotoSyncSubscriberepos
    class Info
      attr_accessor :name

      attr_accessor :message

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:name=, hash["name"])

        instance.send(:message=, hash["message"])

        instance
      end
    end
  end

  module ComAtprotoSyncSubscriberepos
    class RepoOp
      attr_accessor :action

      attr_accessor :path

      attr_accessor :cid

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:action=, hash["action"])

        instance.send(:path=, hash["path"])

        instance.send(:cid=, hash["cid"])

        instance
      end
    end
  end

  module AppBskyActorGetpreferences
    module GetPreferences
      class Input
        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          new
        end

        def to_h
          {}
        end
      end

      class Output
        attr_accessor :preferences

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:preferences=, hash["preferences"])

          instance
        end

        def to_h
          {

            "preferences" => preferences

          }
        end
      end
    end
  end

  module AppBskyActorGetprofile
    module GetProfile
      class Input
        attr_accessor :actor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:actor=, hash["actor"])

          instance
        end

        def to_h
          {

            "actor" => actor

          }
        end
      end

      class Output
        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          new
        end

        def to_h
          {}
        end
      end
    end
  end

  module AppBskyActorGetprofiles
    module GetProfiles
      class Input
        attr_accessor :actors

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:actors=, hash["actors"])

          instance
        end

        def to_h
          {

            "actors" => actors

          }
        end
      end

      class Output
        attr_accessor :profiles

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:profiles=, hash["profiles"])

          instance
        end

        def to_h
          {

            "profiles" => profiles

          }
        end
      end
    end
  end

  module AppBskyActorGetsuggestions
    module GetSuggestions
      class Input
        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :actors

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:actors=, hash["actors"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "actors" => actors

          }
        end
      end
    end
  end

  module AppBskyActorPutpreferences
    module PutPreferences
      class Input
        attr_accessor :preferences

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:preferences=, hash["preferences"])

          instance
        end

        def to_h
          {

            "preferences" => preferences

          }
        end
      end
    end
  end

  module AppBskyActorSearchactors
    module SearchActors
      class Input
        attr_accessor :term

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:term=, hash["term"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "term" => term,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :actors

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:actors=, hash["actors"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "actors" => actors

          }
        end
      end
    end
  end

  module AppBskyActorSearchactorstypeahead
    module SearchActorsTypeahead
      class Input
        attr_accessor :term

        attr_accessor :limit

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:term=, hash["term"])

          instance.send(:limit=, hash["limit"])

          instance
        end

        def to_h
          {

            "term" => term,

            "limit" => limit

          }
        end
      end

      class Output
        attr_accessor :actors

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:actors=, hash["actors"])

          instance
        end

        def to_h
          {

            "actors" => actors

          }
        end
      end
    end
  end

  module AppBskyFeedDescribefeedgenerator
    module DescribeFeedGenerator
      class Output
        attr_accessor :did

        attr_accessor :feeds

        attr_accessor :links

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:did=, hash["did"])

          instance.send(:feeds=, hash["feeds"])

          instance.send(:links=, hash["links"])

          instance
        end

        def to_h
          {

            "did" => did,

            "feeds" => feeds,

            "links" => links

          }
        end
      end
    end
  end

  module AppBskyFeedGetactorfeeds
    module GetActorFeeds
      class Input
        attr_accessor :actor

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:actor=, hash["actor"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "actor" => actor,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :feeds

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:feeds=, hash["feeds"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "feeds" => feeds

          }
        end
      end
    end
  end

  module AppBskyFeedGetauthorfeed
    module GetAuthorFeed
      class Input
        attr_accessor :actor

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:actor=, hash["actor"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "actor" => actor,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :feed

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:feed=, hash["feed"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "feed" => feed

          }
        end
      end
    end
  end

  module AppBskyFeedGetfeed
    module GetFeed
      class Input
        attr_accessor :feed

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:feed=, hash["feed"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "feed" => feed,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :feed

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:feed=, hash["feed"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "feed" => feed

          }
        end
      end
    end
  end

  module AppBskyFeedGetfeedgenerator
    module GetFeedGenerator
      class Input
        attr_accessor :feed

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:feed=, hash["feed"])

          instance
        end

        def to_h
          {

            "feed" => feed

          }
        end
      end

      class Output
        attr_accessor :view

        attr_accessor :isOnline

        attr_accessor :isValid

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:view=, hash["view"])

          instance.send(:isOnline=, hash["isOnline"])

          instance.send(:isValid=, hash["isValid"])

          instance
        end

        def to_h
          {

            "view" => view,

            "isOnline" => isOnline,

            "isValid" => isValid

          }
        end
      end
    end
  end

  module AppBskyFeedGetfeedgenerators
    module GetFeedGenerators
      class Input
        attr_accessor :feeds

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:feeds=, hash["feeds"])

          instance
        end

        def to_h
          {

            "feeds" => feeds

          }
        end
      end

      class Output
        attr_accessor :feeds

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:feeds=, hash["feeds"])

          instance
        end

        def to_h
          {

            "feeds" => feeds

          }
        end
      end
    end
  end

  module AppBskyFeedGetfeedskeleton
    module GetFeedSkeleton
      class Input
        attr_accessor :feed

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:feed=, hash["feed"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "feed" => feed,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :feed

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:feed=, hash["feed"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "feed" => feed

          }
        end
      end
    end
  end

  module AppBskyFeedGetlikes
    module GetLikes
      class Input
        attr_accessor :uri

        attr_accessor :cid

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:uri=, hash["uri"])

          instance.send(:cid=, hash["cid"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "uri" => uri,

            "cid" => cid,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :uri

        attr_accessor :cid

        attr_accessor :cursor

        attr_accessor :likes

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:uri=, hash["uri"])

          instance.send(:cid=, hash["cid"])

          instance.send(:cursor=, hash["cursor"])

          instance.send(:likes=, hash["likes"])

          instance
        end

        def to_h
          {

            "uri" => uri,

            "cid" => cid,

            "cursor" => cursor,

            "likes" => likes

          }
        end
      end
    end
  end

  module AppBskyFeedGetpostthread
    module GetPostThread
      class Input
        attr_accessor :uri

        attr_accessor :depth

        attr_accessor :parentHeight

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:uri=, hash["uri"])

          instance.send(:depth=, hash["depth"])

          instance.send(:parentHeight=, hash["parentHeight"])

          instance
        end

        def to_h
          {

            "uri" => uri,

            "depth" => depth,

            "parentHeight" => parentHeight

          }
        end
      end

      class Output
        attr_accessor :thread

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:thread=, hash["thread"])

          instance
        end

        def to_h
          {

            "thread" => thread

          }
        end
      end
    end
  end

  module AppBskyFeedGetposts
    module GetPosts
      class Input
        attr_accessor :uris

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:uris=, hash["uris"])

          instance
        end

        def to_h
          {

            "uris" => uris

          }
        end
      end

      class Output
        attr_accessor :posts

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:posts=, hash["posts"])

          instance
        end

        def to_h
          {

            "posts" => posts

          }
        end
      end
    end
  end

  module AppBskyFeedGetrepostedby
    module GetRepostedBy
      class Input
        attr_accessor :uri

        attr_accessor :cid

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:uri=, hash["uri"])

          instance.send(:cid=, hash["cid"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "uri" => uri,

            "cid" => cid,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :uri

        attr_accessor :cid

        attr_accessor :cursor

        attr_accessor :repostedBy

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:uri=, hash["uri"])

          instance.send(:cid=, hash["cid"])

          instance.send(:cursor=, hash["cursor"])

          instance.send(:repostedBy=, hash["repostedBy"])

          instance
        end

        def to_h
          {

            "uri" => uri,

            "cid" => cid,

            "cursor" => cursor,

            "repostedBy" => repostedBy

          }
        end
      end
    end
  end

  module AppBskyFeedGettimeline
    module GetTimeline
      class Input
        attr_accessor :algorithm

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:algorithm=, hash["algorithm"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "algorithm" => algorithm,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :feed

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:feed=, hash["feed"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "feed" => feed

          }
        end
      end
    end
  end

  module AppBskyGraphGetblocks
    module GetBlocks
      class Input
        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :blocks

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:blocks=, hash["blocks"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "blocks" => blocks

          }
        end
      end
    end
  end

  module AppBskyGraphGetfollowers
    module GetFollowers
      class Input
        attr_accessor :actor

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:actor=, hash["actor"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "actor" => actor,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :subject

        attr_accessor :cursor

        attr_accessor :followers

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:subject=, hash["subject"])

          instance.send(:cursor=, hash["cursor"])

          instance.send(:followers=, hash["followers"])

          instance
        end

        def to_h
          {

            "subject" => subject,

            "cursor" => cursor,

            "followers" => followers

          }
        end
      end
    end
  end

  module AppBskyGraphGetfollows
    module GetFollows
      class Input
        attr_accessor :actor

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:actor=, hash["actor"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "actor" => actor,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :subject

        attr_accessor :cursor

        attr_accessor :follows

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:subject=, hash["subject"])

          instance.send(:cursor=, hash["cursor"])

          instance.send(:follows=, hash["follows"])

          instance
        end

        def to_h
          {

            "subject" => subject,

            "cursor" => cursor,

            "follows" => follows

          }
        end
      end
    end
  end

  module AppBskyGraphGetlist
    module GetList
      class Input
        attr_accessor :list

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:list=, hash["list"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "list" => list,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :list

        attr_accessor :items

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:list=, hash["list"])

          instance.send(:items=, hash["items"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "list" => list,

            "items" => items

          }
        end
      end
    end
  end

  module AppBskyGraphGetlistmutes
    module GetListMutes
      class Input
        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :lists

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:lists=, hash["lists"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "lists" => lists

          }
        end
      end
    end
  end

  module AppBskyGraphGetlists
    module GetLists
      class Input
        attr_accessor :actor

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:actor=, hash["actor"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "actor" => actor,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :lists

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:lists=, hash["lists"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "lists" => lists

          }
        end
      end
    end
  end

  module AppBskyGraphGetmutes
    module GetMutes
      class Input
        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :mutes

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:mutes=, hash["mutes"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "mutes" => mutes

          }
        end
      end
    end
  end

  module AppBskyGraphMuteactor
    module MuteActor
      class Input
        attr_accessor :actor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:actor=, hash["actor"])

          instance
        end

        def to_h
          {

            "actor" => actor

          }
        end
      end
    end
  end

  module AppBskyGraphMuteactorlist
    module MuteActorList
      class Input
        attr_accessor :list

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:list=, hash["list"])

          instance
        end

        def to_h
          {

            "list" => list

          }
        end
      end
    end
  end

  module AppBskyGraphUnmuteactor
    module UnmuteActor
      class Input
        attr_accessor :actor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:actor=, hash["actor"])

          instance
        end

        def to_h
          {

            "actor" => actor

          }
        end
      end
    end
  end

  module AppBskyGraphUnmuteactorlist
    module UnmuteActorList
      class Input
        attr_accessor :list

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:list=, hash["list"])

          instance
        end

        def to_h
          {

            "list" => list

          }
        end
      end
    end
  end

  module AppBskyNotificationGetunreadcount
    module GetUnreadCount
      class Input
        attr_accessor :seenAt

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:seenAt=, hash["seenAt"])

          instance
        end

        def to_h
          {

            "seenAt" => seenAt

          }
        end
      end

      class Output
        attr_accessor :count

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:count=, hash["count"])

          instance
        end

        def to_h
          {

            "count" => count

          }
        end
      end
    end
  end

  module AppBskyNotificationListnotifications
    module ListNotifications
      class Input
        attr_accessor :limit

        attr_accessor :cursor

        attr_accessor :seenAt

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance.send(:seenAt=, hash["seenAt"])

          instance
        end

        def to_h
          {

            "limit" => limit,

            "cursor" => cursor,

            "seenAt" => seenAt

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :notifications

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:notifications=, hash["notifications"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "notifications" => notifications

          }
        end
      end
    end
  end

  module AppBskyNotificationUpdateseen
    module UpdateSeen
      class Input
        attr_accessor :seenAt

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:seenAt=, hash["seenAt"])

          instance
        end

        def to_h
          {

            "seenAt" => seenAt

          }
        end
      end
    end
  end

  module AppBskyUnspeccedGetpopular
    module GetPopular
      class Input
        attr_accessor :includeNsfw

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:includeNsfw=, hash["includeNsfw"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "includeNsfw" => includeNsfw,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :feed

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:feed=, hash["feed"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "feed" => feed

          }
        end
      end
    end
  end

  module AppBskyUnspeccedGetpopularfeedgenerators
    module GetPopularFeedGenerators
      class Output
        attr_accessor :feeds

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:feeds=, hash["feeds"])

          instance
        end

        def to_h
          {

            "feeds" => feeds

          }
        end
      end
    end
  end

  module ComAtprotoAdminDisableaccountinvites
    module DisableAccountInvites
      class Input
        attr_accessor :account

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:account=, hash["account"])

          instance
        end

        def to_h
          {

            "account" => account

          }
        end
      end
    end
  end

  module ComAtprotoAdminDisableinvitecodes
    module DisableInviteCodes
      class Input
        attr_accessor :codes

        attr_accessor :accounts

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:codes=, hash["codes"])

          instance.send(:accounts=, hash["accounts"])

          instance
        end

        def to_h
          {

            "codes" => codes,

            "accounts" => accounts

          }
        end
      end
    end
  end

  module ComAtprotoAdminEnableaccountinvites
    module EnableAccountInvites
      class Input
        attr_accessor :account

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:account=, hash["account"])

          instance
        end

        def to_h
          {

            "account" => account

          }
        end
      end
    end
  end

  module ComAtprotoAdminGetinvitecodes
    module GetInviteCodes
      class Input
        attr_accessor :sort

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:sort=, hash["sort"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "sort" => sort,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :codes

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:codes=, hash["codes"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "codes" => codes

          }
        end
      end
    end
  end

  module ComAtprotoAdminGetmoderationaction
    module GetModerationAction
      class Input
        attr_accessor :id

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:id=, hash["id"])

          instance
        end

        def to_h
          {

            "id" => id

          }
        end
      end

      class Output
        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          new
        end

        def to_h
          {}
        end
      end
    end
  end

  module ComAtprotoAdminGetmoderationactions
    module GetModerationActions
      class Input
        attr_accessor :subject

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:subject=, hash["subject"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "subject" => subject,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :actions

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:actions=, hash["actions"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "actions" => actions

          }
        end
      end
    end
  end

  module ComAtprotoAdminGetmoderationreport
    module GetModerationReport
      class Input
        attr_accessor :id

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:id=, hash["id"])

          instance
        end

        def to_h
          {

            "id" => id

          }
        end
      end

      class Output
        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          new
        end

        def to_h
          {}
        end
      end
    end
  end

  module ComAtprotoAdminGetmoderationreports
    module GetModerationReports
      class Input
        attr_accessor :subject

        attr_accessor :ignoreSubjects

        attr_accessor :reporters

        attr_accessor :resolved

        attr_accessor :actionType

        attr_accessor :limit

        attr_accessor :cursor

        attr_accessor :reverse

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:subject=, hash["subject"])

          instance.send(:ignoreSubjects=, hash["ignoreSubjects"])

          instance.send(:reporters=, hash["reporters"])

          instance.send(:resolved=, hash["resolved"])

          instance.send(:actionType=, hash["actionType"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance.send(:reverse=, hash["reverse"])

          instance
        end

        def to_h
          {

            "subject" => subject,

            "ignoreSubjects" => ignoreSubjects,

            "reporters" => reporters,

            "resolved" => resolved,

            "actionType" => actionType,

            "limit" => limit,

            "cursor" => cursor,

            "reverse" => reverse

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :reports

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:reports=, hash["reports"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "reports" => reports

          }
        end
      end
    end
  end

  module ComAtprotoAdminGetrecord
    module GetRecord
      class Input
        attr_accessor :uri

        attr_accessor :cid

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:uri=, hash["uri"])

          instance.send(:cid=, hash["cid"])

          instance
        end

        def to_h
          {

            "uri" => uri,

            "cid" => cid

          }
        end
      end

      class Output
        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          new
        end

        def to_h
          {}
        end
      end
    end
  end

  module ComAtprotoAdminGetrepo
    module GetRepo
      class Input
        attr_accessor :did

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:did=, hash["did"])

          instance
        end

        def to_h
          {

            "did" => did

          }
        end
      end

      class Output
        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          new
        end

        def to_h
          {}
        end
      end
    end
  end

  module ComAtprotoAdminRebaserepo
    module RebaseRepo
      class Input
        attr_accessor :repo

        attr_accessor :swapCommit

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:repo=, hash["repo"])

          instance.send(:swapCommit=, hash["swapCommit"])

          instance
        end

        def to_h
          {

            "repo" => repo,

            "swapCommit" => swapCommit

          }
        end
      end
    end
  end

  module ComAtprotoAdminResolvemoderationreports
    module ResolveModerationReports
      class Input
        attr_accessor :actionId

        attr_accessor :reportIds

        attr_accessor :createdBy

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:actionId=, hash["actionId"])

          instance.send(:reportIds=, hash["reportIds"])

          instance.send(:createdBy=, hash["createdBy"])

          instance
        end

        def to_h
          {

            "actionId" => actionId,

            "reportIds" => reportIds,

            "createdBy" => createdBy

          }
        end
      end

      class Output
        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          new
        end

        def to_h
          {}
        end
      end
    end
  end

  module ComAtprotoAdminReversemoderationaction
    module ReverseModerationAction
      class Input
        attr_accessor :id

        attr_accessor :reason

        attr_accessor :createdBy

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:id=, hash["id"])

          instance.send(:reason=, hash["reason"])

          instance.send(:createdBy=, hash["createdBy"])

          instance
        end

        def to_h
          {

            "id" => id,

            "reason" => reason,

            "createdBy" => createdBy

          }
        end
      end

      class Output
        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          new
        end

        def to_h
          {}
        end
      end
    end
  end

  module ComAtprotoAdminSearchrepos
    module SearchRepos
      class Input
        attr_accessor :term

        attr_accessor :invitedBy

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:term=, hash["term"])

          instance.send(:invitedBy=, hash["invitedBy"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "term" => term,

            "invitedBy" => invitedBy,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :repos

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:repos=, hash["repos"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "repos" => repos

          }
        end
      end
    end
  end

  module ComAtprotoAdminTakemoderationaction
    module TakeModerationAction
      class Input
        attr_accessor :action

        attr_accessor :subject

        attr_accessor :subjectBlobCids

        attr_accessor :createLabelVals

        attr_accessor :negateLabelVals

        attr_accessor :reason

        attr_accessor :createdBy

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:action=, hash["action"])

          instance.send(:subject=, hash["subject"])

          instance.send(:subjectBlobCids=, hash["subjectBlobCids"])

          instance.send(:createLabelVals=, hash["createLabelVals"])

          instance.send(:negateLabelVals=, hash["negateLabelVals"])

          instance.send(:reason=, hash["reason"])

          instance.send(:createdBy=, hash["createdBy"])

          instance
        end

        def to_h
          {

            "action" => action,

            "subject" => subject,

            "subjectBlobCids" => subjectBlobCids,

            "createLabelVals" => createLabelVals,

            "negateLabelVals" => negateLabelVals,

            "reason" => reason,

            "createdBy" => createdBy

          }
        end
      end

      class Output
        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          new
        end

        def to_h
          {}
        end
      end
    end
  end

  module ComAtprotoAdminUpdateaccountemail
    module UpdateAccountEmail
      class Input
        attr_accessor :account

        attr_accessor :email

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:account=, hash["account"])

          instance.send(:email=, hash["email"])

          instance
        end

        def to_h
          {

            "account" => account,

            "email" => email

          }
        end
      end
    end
  end

  module ComAtprotoAdminUpdateaccounthandle
    module UpdateAccountHandle
      class Input
        attr_accessor :did

        attr_accessor :handle

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:did=, hash["did"])

          instance.send(:handle=, hash["handle"])

          instance
        end

        def to_h
          {

            "did" => did,

            "handle" => handle

          }
        end
      end
    end
  end

  module ComAtprotoIdentityResolvehandle
    module ResolveHandle
      class Input
        attr_accessor :handle

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:handle=, hash["handle"])

          instance
        end

        def to_h
          {

            "handle" => handle

          }
        end
      end

      class Output
        attr_accessor :did

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:did=, hash["did"])

          instance
        end

        def to_h
          {

            "did" => did

          }
        end
      end
    end
  end

  module ComAtprotoIdentityUpdatehandle
    module UpdateHandle
      class Input
        attr_accessor :handle

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:handle=, hash["handle"])

          instance
        end

        def to_h
          {

            "handle" => handle

          }
        end
      end
    end
  end

  module ComAtprotoLabelQuerylabels
    module QueryLabels
      class Input
        attr_accessor :uriPatterns

        attr_accessor :sources

        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:uriPatterns=, hash["uriPatterns"])

          instance.send(:sources=, hash["sources"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "uriPatterns" => uriPatterns,

            "sources" => sources,

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :labels

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:labels=, hash["labels"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "labels" => labels

          }
        end
      end
    end
  end

  module ComAtprotoModerationCreatereport
    module CreateReport
      class Input
        attr_accessor :reasonType

        attr_accessor :reason

        attr_accessor :subject

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:reasonType=, hash["reasonType"])

          instance.send(:reason=, hash["reason"])

          instance.send(:subject=, hash["subject"])

          instance
        end

        def to_h
          {

            "reasonType" => reasonType,

            "reason" => reason,

            "subject" => subject

          }
        end
      end

      class Output
        attr_accessor :id

        attr_accessor :reasonType

        attr_accessor :reason

        attr_accessor :subject

        attr_accessor :reportedBy

        attr_accessor :createdAt

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:id=, hash["id"])

          instance.send(:reasonType=, hash["reasonType"])

          instance.send(:reason=, hash["reason"])

          instance.send(:subject=, hash["subject"])

          instance.send(:reportedBy=, hash["reportedBy"])

          instance.send(:createdAt=, hash["createdAt"])

          instance
        end

        def to_h
          {

            "id" => id,

            "reasonType" => reasonType,

            "reason" => reason,

            "subject" => subject,

            "reportedBy" => reportedBy,

            "createdAt" => createdAt

          }
        end
      end
    end
  end

  module ComAtprotoRepoApplywrites
    module ApplyWrites
      class Input
        attr_accessor :repo

        attr_accessor :validate

        attr_accessor :writes

        attr_accessor :swapCommit

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:repo=, hash["repo"])

          instance.send(:validate=, hash["validate"])

          instance.send(:writes=, hash["writes"])

          instance.send(:swapCommit=, hash["swapCommit"])

          instance
        end

        def to_h
          {

            "repo" => repo,

            "validate" => validate,

            "writes" => writes,

            "swapCommit" => swapCommit

          }
        end
      end
    end
  end

  module ComAtprotoRepoCreaterecord
    module CreateRecord
      class Input
        attr_accessor :repo

        attr_accessor :collection

        attr_accessor :rkey

        attr_accessor :validate

        attr_accessor :record

        attr_accessor :swapCommit

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:repo=, hash["repo"])

          instance.send(:collection=, hash["collection"])

          instance.send(:rkey=, hash["rkey"])

          instance.send(:validate=, hash["validate"])

          instance.send(:record=, hash["record"])

          instance.send(:swapCommit=, hash["swapCommit"])

          instance
        end

        def to_h
          {

            "repo" => repo,

            "collection" => collection,

            "rkey" => rkey,

            "validate" => validate,

            "record" => record,

            "swapCommit" => swapCommit

          }
        end
      end

      class Output
        attr_accessor :uri

        attr_accessor :cid

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:uri=, hash["uri"])

          instance.send(:cid=, hash["cid"])

          instance
        end

        def to_h
          {

            "uri" => uri,

            "cid" => cid

          }
        end
      end
    end
  end

  module ComAtprotoRepoDeleterecord
    module DeleteRecord
      class Input
        attr_accessor :repo

        attr_accessor :collection

        attr_accessor :rkey

        attr_accessor :swapRecord

        attr_accessor :swapCommit

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:repo=, hash["repo"])

          instance.send(:collection=, hash["collection"])

          instance.send(:rkey=, hash["rkey"])

          instance.send(:swapRecord=, hash["swapRecord"])

          instance.send(:swapCommit=, hash["swapCommit"])

          instance
        end

        def to_h
          {

            "repo" => repo,

            "collection" => collection,

            "rkey" => rkey,

            "swapRecord" => swapRecord,

            "swapCommit" => swapCommit

          }
        end
      end
    end
  end

  module ComAtprotoRepoDescriberepo
    module DescribeRepo
      class Input
        attr_accessor :repo

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:repo=, hash["repo"])

          instance
        end

        def to_h
          {

            "repo" => repo

          }
        end
      end

      class Output
        attr_accessor :handle

        attr_accessor :did

        attr_accessor :didDoc

        attr_accessor :collections

        attr_accessor :handleIsCorrect

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:handle=, hash["handle"])

          instance.send(:did=, hash["did"])

          instance.send(:didDoc=, hash["didDoc"])

          instance.send(:collections=, hash["collections"])

          instance.send(:handleIsCorrect=, hash["handleIsCorrect"])

          instance
        end

        def to_h
          {

            "handle" => handle,

            "did" => did,

            "didDoc" => didDoc,

            "collections" => collections,

            "handleIsCorrect" => handleIsCorrect

          }
        end
      end
    end
  end

  module ComAtprotoRepoGetrecord
    module GetRecord
      class Input
        attr_accessor :repo

        attr_accessor :collection

        attr_accessor :rkey

        attr_accessor :cid

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:repo=, hash["repo"])

          instance.send(:collection=, hash["collection"])

          instance.send(:rkey=, hash["rkey"])

          instance.send(:cid=, hash["cid"])

          instance
        end

        def to_h
          {

            "repo" => repo,

            "collection" => collection,

            "rkey" => rkey,

            "cid" => cid

          }
        end
      end

      class Output
        attr_accessor :uri

        attr_accessor :cid

        attr_accessor :value

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:uri=, hash["uri"])

          instance.send(:cid=, hash["cid"])

          instance.send(:value=, hash["value"])

          instance
        end

        def to_h
          {

            "uri" => uri,

            "cid" => cid,

            "value" => value

          }
        end
      end
    end
  end

  module ComAtprotoRepoListrecords
    module ListRecords
      class Input
        attr_accessor :repo

        attr_accessor :collection

        attr_accessor :limit

        attr_accessor :cursor

        attr_accessor :rkeyStart

        attr_accessor :rkeyEnd

        attr_accessor :reverse

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:repo=, hash["repo"])

          instance.send(:collection=, hash["collection"])

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance.send(:rkeyStart=, hash["rkeyStart"])

          instance.send(:rkeyEnd=, hash["rkeyEnd"])

          instance.send(:reverse=, hash["reverse"])

          instance
        end

        def to_h
          {

            "repo" => repo,

            "collection" => collection,

            "limit" => limit,

            "cursor" => cursor,

            "rkeyStart" => rkeyStart,

            "rkeyEnd" => rkeyEnd,

            "reverse" => reverse

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :records

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:records=, hash["records"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "records" => records

          }
        end
      end
    end
  end

  module ComAtprotoRepoPutrecord
    module PutRecord
      class Input
        attr_accessor :repo

        attr_accessor :collection

        attr_accessor :rkey

        attr_accessor :validate

        attr_accessor :record

        attr_accessor :swapRecord

        attr_accessor :swapCommit

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:repo=, hash["repo"])

          instance.send(:collection=, hash["collection"])

          instance.send(:rkey=, hash["rkey"])

          instance.send(:validate=, hash["validate"])

          instance.send(:record=, hash["record"])

          instance.send(:swapRecord=, hash["swapRecord"])

          instance.send(:swapCommit=, hash["swapCommit"])

          instance
        end

        def to_h
          {

            "repo" => repo,

            "collection" => collection,

            "rkey" => rkey,

            "validate" => validate,

            "record" => record,

            "swapRecord" => swapRecord,

            "swapCommit" => swapCommit

          }
        end
      end

      class Output
        attr_accessor :uri

        attr_accessor :cid

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:uri=, hash["uri"])

          instance.send(:cid=, hash["cid"])

          instance
        end

        def to_h
          {

            "uri" => uri,

            "cid" => cid

          }
        end
      end
    end
  end

  module ComAtprotoRepoRebaserepo
    module RebaseRepo
      class Input
        attr_accessor :repo

        attr_accessor :swapCommit

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:repo=, hash["repo"])

          instance.send(:swapCommit=, hash["swapCommit"])

          instance
        end

        def to_h
          {

            "repo" => repo,

            "swapCommit" => swapCommit

          }
        end
      end
    end
  end

  module ComAtprotoRepoUploadblob
    module UploadBlob
      class Output
        attr_accessor :blob

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:blob=, hash["blob"])

          instance
        end

        def to_h
          {

            "blob" => blob

          }
        end
      end
    end
  end

  module ComAtprotoServerCreateaccount
    module CreateAccount
      class Input
        attr_accessor :email

        attr_accessor :handle

        attr_accessor :did

        attr_accessor :inviteCode

        attr_accessor :password

        attr_accessor :recoveryKey

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:email=, hash["email"])

          instance.send(:handle=, hash["handle"])

          instance.send(:did=, hash["did"])

          instance.send(:inviteCode=, hash["inviteCode"])

          instance.send(:password=, hash["password"])

          instance.send(:recoveryKey=, hash["recoveryKey"])

          instance
        end

        def to_h
          {

            "email" => email,

            "handle" => handle,

            "did" => did,

            "inviteCode" => inviteCode,

            "password" => password,

            "recoveryKey" => recoveryKey

          }
        end
      end

      class Output
        attr_accessor :accessJwt

        attr_accessor :refreshJwt

        attr_accessor :handle

        attr_accessor :did

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:accessJwt=, hash["accessJwt"])

          instance.send(:refreshJwt=, hash["refreshJwt"])

          instance.send(:handle=, hash["handle"])

          instance.send(:did=, hash["did"])

          instance
        end

        def to_h
          {

            "accessJwt" => accessJwt,

            "refreshJwt" => refreshJwt,

            "handle" => handle,

            "did" => did

          }
        end
      end
    end
  end

  module ComAtprotoServerCreateapppassword
    module CreateAppPassword
      class Input
        attr_accessor :name

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:name=, hash["name"])

          instance
        end

        def to_h
          {

            "name" => name

          }
        end
      end

      class Output
        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          new
        end

        def to_h
          {}
        end
      end
    end
  end

  module ComAtprotoServerCreateinvitecode
    module CreateInviteCode
      class Input
        attr_accessor :useCount

        attr_accessor :forAccount

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:useCount=, hash["useCount"])

          instance.send(:forAccount=, hash["forAccount"])

          instance
        end

        def to_h
          {

            "useCount" => useCount,

            "forAccount" => forAccount

          }
        end
      end

      class Output
        attr_accessor :code

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:code=, hash["code"])

          instance
        end

        def to_h
          {

            "code" => code

          }
        end
      end
    end
  end

  module ComAtprotoServerCreateinvitecodes
    module CreateInviteCodes
      class Input
        attr_accessor :codeCount

        attr_accessor :useCount

        attr_accessor :forAccounts

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:codeCount=, hash["codeCount"])

          instance.send(:useCount=, hash["useCount"])

          instance.send(:forAccounts=, hash["forAccounts"])

          instance
        end

        def to_h
          {

            "codeCount" => codeCount,

            "useCount" => useCount,

            "forAccounts" => forAccounts

          }
        end
      end

      class Output
        attr_accessor :codes

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:codes=, hash["codes"])

          instance
        end

        def to_h
          {

            "codes" => codes

          }
        end
      end
    end
  end

  module ComAtprotoServerCreatesession
    module CreateSession
      class Input
        attr_accessor :identifier

        attr_accessor :password

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:identifier=, hash["identifier"])

          instance.send(:password=, hash["password"])

          instance
        end

        def to_h
          {

            "identifier" => identifier,

            "password" => password

          }
        end
      end

      class Output
        attr_accessor :accessJwt

        attr_accessor :refreshJwt

        attr_accessor :handle

        attr_accessor :did

        attr_accessor :email

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:accessJwt=, hash["accessJwt"])

          instance.send(:refreshJwt=, hash["refreshJwt"])

          instance.send(:handle=, hash["handle"])

          instance.send(:did=, hash["did"])

          instance.send(:email=, hash["email"])

          instance
        end

        def to_h
          {

            "accessJwt" => accessJwt,

            "refreshJwt" => refreshJwt,

            "handle" => handle,

            "did" => did,

            "email" => email

          }
        end
      end
    end
  end

  module ComAtprotoServerDeleteaccount
    module DeleteAccount
      class Input
        attr_accessor :did

        attr_accessor :password

        attr_accessor :token

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:did=, hash["did"])

          instance.send(:password=, hash["password"])

          instance.send(:token=, hash["token"])

          instance
        end

        def to_h
          {

            "did" => did,

            "password" => password,

            "token" => token

          }
        end
      end
    end
  end

  module ComAtprotoServerDeletesession
    module DeleteSession
    end
  end

  module ComAtprotoServerDescribeserver
    module DescribeServer
      class Output
        attr_accessor :inviteCodeRequired

        attr_accessor :availableUserDomains

        attr_accessor :links

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:inviteCodeRequired=, hash["inviteCodeRequired"])

          instance.send(:availableUserDomains=, hash["availableUserDomains"])

          instance.send(:links=, hash["links"])

          instance
        end

        def to_h
          {

            "inviteCodeRequired" => inviteCodeRequired,

            "availableUserDomains" => availableUserDomains,

            "links" => links

          }
        end
      end
    end
  end

  module ComAtprotoServerGetaccountinvitecodes
    module GetAccountInviteCodes
      class Input
        attr_accessor :includeUsed

        attr_accessor :createAvailable

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:includeUsed=, hash["includeUsed"])

          instance.send(:createAvailable=, hash["createAvailable"])

          instance
        end

        def to_h
          {

            "includeUsed" => includeUsed,

            "createAvailable" => createAvailable

          }
        end
      end

      class Output
        attr_accessor :codes

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:codes=, hash["codes"])

          instance
        end

        def to_h
          {

            "codes" => codes

          }
        end
      end
    end
  end

  module ComAtprotoServerGetsession
    module GetSession
      class Output
        attr_accessor :handle

        attr_accessor :did

        attr_accessor :email

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:handle=, hash["handle"])

          instance.send(:did=, hash["did"])

          instance.send(:email=, hash["email"])

          instance
        end

        def to_h
          {

            "handle" => handle,

            "did" => did,

            "email" => email

          }
        end
      end
    end
  end

  module ComAtprotoServerListapppasswords
    module ListAppPasswords
      class Output
        attr_accessor :passwords

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:passwords=, hash["passwords"])

          instance
        end

        def to_h
          {

            "passwords" => passwords

          }
        end
      end
    end
  end

  module ComAtprotoServerRefreshsession
    module RefreshSession
      class Output
        attr_accessor :accessJwt

        attr_accessor :refreshJwt

        attr_accessor :handle

        attr_accessor :did

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:accessJwt=, hash["accessJwt"])

          instance.send(:refreshJwt=, hash["refreshJwt"])

          instance.send(:handle=, hash["handle"])

          instance.send(:did=, hash["did"])

          instance
        end

        def to_h
          {

            "accessJwt" => accessJwt,

            "refreshJwt" => refreshJwt,

            "handle" => handle,

            "did" => did

          }
        end
      end
    end
  end

  module ComAtprotoServerRequestaccountdelete
    module RequestAccountDelete
    end
  end

  module ComAtprotoServerRequestpasswordreset
    module RequestPasswordReset
      class Input
        attr_accessor :email

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:email=, hash["email"])

          instance
        end

        def to_h
          {

            "email" => email

          }
        end
      end
    end
  end

  module ComAtprotoServerResetpassword
    module ResetPassword
      class Input
        attr_accessor :token

        attr_accessor :password

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:token=, hash["token"])

          instance.send(:password=, hash["password"])

          instance
        end

        def to_h
          {

            "token" => token,

            "password" => password

          }
        end
      end
    end
  end

  module ComAtprotoServerRevokeapppassword
    module RevokeAppPassword
      class Input
        attr_accessor :name

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:name=, hash["name"])

          instance
        end

        def to_h
          {

            "name" => name

          }
        end
      end
    end
  end

  module ComAtprotoSyncGetblob
    module GetBlob
      class Input
        attr_accessor :did

        attr_accessor :cid

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:did=, hash["did"])

          instance.send(:cid=, hash["cid"])

          instance
        end

        def to_h
          {

            "did" => did,

            "cid" => cid

          }
        end
      end
    end
  end

  module ComAtprotoSyncGetblocks
    module GetBlocks
      class Input
        attr_accessor :did

        attr_accessor :cids

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:did=, hash["did"])

          instance.send(:cids=, hash["cids"])

          instance
        end

        def to_h
          {

            "did" => did,

            "cids" => cids

          }
        end
      end
    end
  end

  module ComAtprotoSyncGetcheckout
    module GetCheckout
      class Input
        attr_accessor :did

        attr_accessor :commit

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:did=, hash["did"])

          instance.send(:commit=, hash["commit"])

          instance
        end

        def to_h
          {

            "did" => did,

            "commit" => commit

          }
        end
      end
    end
  end

  module ComAtprotoSyncGetcommitpath
    module GetCommitPath
      class Input
        attr_accessor :did

        attr_accessor :latest

        attr_accessor :earliest

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:did=, hash["did"])

          instance.send(:latest=, hash["latest"])

          instance.send(:earliest=, hash["earliest"])

          instance
        end

        def to_h
          {

            "did" => did,

            "latest" => latest,

            "earliest" => earliest

          }
        end
      end

      class Output
        attr_accessor :commits

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:commits=, hash["commits"])

          instance
        end

        def to_h
          {

            "commits" => commits

          }
        end
      end
    end
  end

  module ComAtprotoSyncGethead
    module GetHead
      class Input
        attr_accessor :did

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:did=, hash["did"])

          instance
        end

        def to_h
          {

            "did" => did

          }
        end
      end

      class Output
        attr_accessor :root

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:root=, hash["root"])

          instance
        end

        def to_h
          {

            "root" => root

          }
        end
      end
    end
  end

  module ComAtprotoSyncGetrecord
    module GetRecord
      class Input
        attr_accessor :did

        attr_accessor :collection

        attr_accessor :rkey

        attr_accessor :commit

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:did=, hash["did"])

          instance.send(:collection=, hash["collection"])

          instance.send(:rkey=, hash["rkey"])

          instance.send(:commit=, hash["commit"])

          instance
        end

        def to_h
          {

            "did" => did,

            "collection" => collection,

            "rkey" => rkey,

            "commit" => commit

          }
        end
      end
    end
  end

  module ComAtprotoSyncGetrepo
    module GetRepo
      class Input
        attr_accessor :did

        attr_accessor :earliest

        attr_accessor :latest

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:did=, hash["did"])

          instance.send(:earliest=, hash["earliest"])

          instance.send(:latest=, hash["latest"])

          instance
        end

        def to_h
          {

            "did" => did,

            "earliest" => earliest,

            "latest" => latest

          }
        end
      end
    end
  end

  module ComAtprotoSyncListblobs
    module ListBlobs
      class Input
        attr_accessor :did

        attr_accessor :latest

        attr_accessor :earliest

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:did=, hash["did"])

          instance.send(:latest=, hash["latest"])

          instance.send(:earliest=, hash["earliest"])

          instance
        end

        def to_h
          {

            "did" => did,

            "latest" => latest,

            "earliest" => earliest

          }
        end
      end

      class Output
        attr_accessor :cids

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cids=, hash["cids"])

          instance
        end

        def to_h
          {

            "cids" => cids

          }
        end
      end
    end
  end

  module ComAtprotoSyncListrepos
    module ListRepos
      class Input
        attr_accessor :limit

        attr_accessor :cursor

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:limit=, hash["limit"])

          instance.send(:cursor=, hash["cursor"])

          instance
        end

        def to_h
          {

            "limit" => limit,

            "cursor" => cursor

          }
        end
      end

      class Output
        attr_accessor :cursor

        attr_accessor :repos

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:cursor=, hash["cursor"])

          instance.send(:repos=, hash["repos"])

          instance
        end

        def to_h
          {

            "cursor" => cursor,

            "repos" => repos

          }
        end
      end
    end
  end

  module ComAtprotoSyncNotifyofupdate
    module NotifyOfUpdate
      class Input
        attr_accessor :hostname

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:hostname=, hash["hostname"])

          instance
        end

        def to_h
          {

            "hostname" => hostname

          }
        end
      end
    end
  end

  module ComAtprotoSyncRequestcrawl
    module RequestCrawl
      class Input
        attr_accessor :hostname

        def self.from_hash(hash)
          # httparty-returned string-keyed hash
          instance = new

          instance.send(:hostname=, hash["hostname"])

          instance
        end

        def to_h
          {

            "hostname" => hostname

          }
        end
      end
    end
  end
end
