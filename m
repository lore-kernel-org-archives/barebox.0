Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZzjE-0003Vf-HH
 for barebox@lists.infradead.org; Wed, 08 May 2013 08:28:00 +0000
Message-ID: <OFAB321AD6.9AFA0E51-ONC1257B65.002D90FB-C1257B65.002E7A38@o0802.rafi.inhouse>
From: andreas.willig@rafi.de
Date: Wed, 8 May 2013 10:27:39 +0200
MIME-Version: 1.0
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
Subject: Barebox Enviroment FileSystem
To: barebox@lists.infradead.org


Hi there

I'm just about to implement direct access to BareBox Env FileSystem from
Windows Embedded Compact 7 launched through BB and it seems to me I met a
bug in the environment code.

File: common/environment.c
Line: 89 (latest revision by 8th of May)
Function: file_save_action

The creation of the File's INODE is done strange:

  87         inode = (struct envfs_inode*)data->writep;
  88         inode->magic = ENVFS_32(ENVFS_INODE_MAGIC);
  89         inode->headerlen = ENVFS_32(PAD4(namelen + sizeof(struct
envfs_inode_end)));

Now the bug / my question is:
Why is the HeaderLen of the Inode created by padded filename + sizeof
inode_end instead of padded filename + sizeof(inode) did i get something
wrong or is this a bug?

envfs_load will not meet this problem since headerlen is not used during
expansion of FS to ram.

An additional question i got btw: Is it intentionally desired that empty
directories are dropped during creation of bin file? The inode_end seems to
support an empty directory entry, but code does not create such entries.

Thanks in advance

Andreas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
