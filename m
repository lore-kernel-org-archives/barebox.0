Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UaBjD-0002bD-4o
 for barebox@lists.infradead.org; Wed, 08 May 2013 21:16:48 +0000
Date: Wed, 8 May 2013 23:16:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130508211623.GF32299@pengutronix.de>
References: <OFAB321AD6.9AFA0E51-ONC1257B65.002D90FB-C1257B65.002E7A38@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OFAB321AD6.9AFA0E51-ONC1257B65.002D90FB-C1257B65.002E7A38@o0802.rafi.inhouse>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox Enviroment FileSystem
To: andreas.willig@rafi.de
Cc: barebox@lists.infradead.org

On Wed, May 08, 2013 at 10:27:39AM +0200, andreas.willig@rafi.de wrote:
> 
> Hi there
> 
> I'm just about to implement direct access to BareBox Env FileSystem from
> Windows Embedded Compact 7 launched through BB and it seems to me I met a
> bug in the environment code.
> 
> File: common/environment.c
> Line: 89 (latest revision by 8th of May)
> Function: file_save_action
> 
> The creation of the File's INODE is done strange:
> 
>   87         inode = (struct envfs_inode*)data->writep;
>   88         inode->magic = ENVFS_32(ENVFS_INODE_MAGIC);
>   89         inode->headerlen = ENVFS_32(PAD4(namelen + sizeof(struct
> envfs_inode_end)));
> 
> Now the bug / my question is:
> Why is the HeaderLen of the Inode created by padded filename + sizeof
> inode_end instead of padded filename + sizeof(inode) did i get something
> wrong or is this a bug?

No, it's not a bug. On storage we have:

|-- struct inode --||-- name --||-- struct inode_end --| <next inode>

headerlen is the length of name and struct inode_end. To understand the
layout it helps to look at the history. Originally we had:

|-- struct inode --||-- name --| <next inode>

The field 'headerlen' was named 'namelen' back then. Then
Jean-Christophe wanted to add a new data field (the file mode). The
obvious way of adding it to struct inode was not chosen because it would
have changed the storage data format. Instead a struct inode_end was
added which could be read by both the old and the new code.

I think more correctly the line you reference should read:

inode->headerlen = ENVFS_32(PAD4(namelen) + sizeof(struct envfs_inode_end));

But the result is the same.

> 
> envfs_load will not meet this problem since headerlen is not used during
> expansion of FS to ram.
> 
> An additional question i got btw: Is it intentionally desired that empty
> directories are dropped during creation of bin file? The inode_end seems to
> support an empty directory entry, but code does not create such entries.

No, this was not intentional. You're probably the first one who ever
spotted this.
This might be worth fixing, but appearently this doesn't seem to be very
important ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
