Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx009.vodafonemail.xion.oxcs.net ([153.92.174.39])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkShe-0003NI-LJ
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 11:20:36 +0000
Received: from vsmx002.vodafonemail.xion.oxcs.net (unknown [192.168.75.192])
 by mta-6-out.mta.xion.oxcs.net (Postfix) with ESMTP id 2CE4BD9B364
 for <barebox@lists.infradead.org>; Tue, 31 Jul 2018 11:20:15 +0000 (UTC)
Received: from null (app-43.app.xion.oxcs.net [10.10.1.43])
 by mta-6-out.mta.xion.oxcs.net (Postfix) with ESMTPA id 1A988199C71
 for <barebox@lists.infradead.org>; Tue, 31 Jul 2018 11:20:12 +0000 (UTC)
Date: Tue, 31 Jul 2018 13:20:12 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <479189478.116665.1533036012752@mail.vodafone.de>
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
Subject: root= kernel cmdline parameter
To: barebox@lists.infradead.org

Hi all,

I'm trying to find out the best method to define the root=
parameter when booting the linux kernel from barebox.

My system boots from an sd card partitioned with a GPT.
The sd card has two independent set of partitions with
the following labels:

1)   boot_1 + rootfs_1
2)   boot_2 + rootfs_2

for redondance in case one set gets damaged while updating.

'boot_1' is formatted with ext4 and contains the kernel + dtb images
for the userland in 'rootfs_1'; and the same for 'boot_2' and 'rootfs_2'.

Currently I hardcode the 'root' parameter to '/dev/mmcblk0p3' or
'/dev/mmcblk0p4' corresponding to the kernel in 'boot_1' or
'boot_2' and it actually works but is there a better way to do
this ?

Using the global var. 'bootm.appendroot' does not work because the
userland image is not in the same partition as the kernel.

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
