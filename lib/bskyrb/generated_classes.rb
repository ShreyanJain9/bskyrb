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

      attr_accessor :following

      attr_accessor :followedBy

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:muted=, hash["muted"])

        instance.send(:following=, hash["following"])

        instance.send(:followedBy=, hash["followedBy"])

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

      attr_accessor :embeds

      attr_accessor :indexedAt

      def self.from_hash(hash)
        # httparty-returned string-keyed hash
        instance = new

        instance.send(:uri=, hash["uri"])

        instance.send(:cid=, hash["cid"])

        instance.send(:author=, hash["author"])

        instance.send(:value=, hash["value"])

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
    class ReportView
      attr_accessor :id

      attr_accessor :reasonType

      attr_accessor :reason

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
end
