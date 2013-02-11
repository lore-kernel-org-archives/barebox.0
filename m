Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x231.google.com ([2a00:1450:400c:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U52Ra-0004l7-2k
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 23:05:50 +0000
Received: by mail-we0-f177.google.com with SMTP id d7so5318118wer.22
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2013 15:05:42 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Tue, 12 Feb 2013 00:04:57 +0100
Message-Id: <1360623899-10059-1-git-send-email-vicencb@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] Summary of last patches submitted
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

Here are the last two patches I've submitted.
The first is a straightforward solution to a regression.
The second was first intended to provide devicetree support for booting an
omap4 based tablet. I've achieved booting it successfully, but after several
tries at bringing the mmc controller working I've realised that the Linux
kernel still has no support for devicetree on omap4 (it's almost there, but it
lacks dma configuration).
For more information see:
http://omappedia.org/wiki/Device_Tree#Drivers_.2F_Features_migration_status
So the second patch has been stripped and only provides generic support,
nothing related to the tablet.

The patches also include the changes reflecting the received feedback, thanks!

Vicente Bergas (2):
  ArchosG9: solve regression in second stage lowlevel init
  DeviceTree: add support for initrd in the DT

 arch/arm/boards/archosg9/lowlevel.c |  7 ++--
 arch/arm/lib/armlinux.c             |  2 ++
 common/oftree.c                     | 66 +++++++++++++++++++++++++++++++++++++
 include/of.h                        |  8 +++++
 4 files changed, 81 insertions(+), 2 deletions(-)

-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
