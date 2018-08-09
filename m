Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnhby-00069O-4y
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 09:52:07 +0000
Received: from ravnborg.org (unknown [158.248.196.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id E897880328
 for <barebox@lists.infradead.org>; Thu,  9 Aug 2018 11:51:47 +0200 (CEST)
Date: Thu, 9 Aug 2018 11:51:46 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180809095146.GA26594@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: NFS boot - could not open /.tftp_tmp_path
To: Barebox List <barebox@lists.infradead.org>

Hi all.

I try to boot my target using NFS - but something does not work.
I have a server (192.168.86.201) where I have exported
an nfs mount like this:
$ sudo exportfs
/nfsboot/arm9   <world>
$ cat /etc/exports.d/nfsboot.exports
/nfsboot/arm9        *(insecure,no_subtree_check,no_root_squash,rw,nohide)

On my barebox target I can then mount the nfs like this:
barebox: mkdir /mnt
barebox: /mnt/nfs
barebox: mount -t nfs 192.168.86.201:/nfsboot/arm9

barebox: mount
none on / type ramfs
none on /dev type devfs
192.168.86.201:/nfsboot/arm9 on /mnt/nfs type nfs

barebox: ls /mnt/nfs <= shows the file I have on the server

Then when I try to boot from nfs I get the following output:

barebox: boot nfs://192.168.86.201/nfsboot/arm9/
eth0: DHCP client bound to address 192.168.86.20
T T T T T T T T T T T T T T could not open /.tftp_tmp_path/zImage-at91sam9263ek

When I grep the barebox source I can only find 'tftp_tmp_path' in some
tftp code.

It looks like it somehow revert back to tftp despite I have specified nfs.
I hope there is something trivial I do wrong.

Any hints?

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
