Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171] helo=mail2.data-modul.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XlYxH-0004Ll-B6
 for barebox@lists.infradead.org; Tue, 04 Nov 2014 07:55:08 +0000
From: Zahari Doychev <zahari.doychev@linux.com>
Date: Tue,  4 Nov 2014 08:54:00 +0100
Message-Id: <cover.1415087152.git.zahari.doychev@linux.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fix mbr detection
To: barebox@lists.infradead.org

I have a strange problem using usb sticks in barebox. After formatting some
previously FAT sticks they still have file system type set to FAT32 in the mbr.
In this way there are detected as FAT fs partitions instead of MBRs and the usb
media partitons can not be parsed.

This patch should resolve this problem. Please review it and check if it is
fine and not causing any side effects.

Regards,
Zahari

Zahari Doychev (1):
  common: fix mbr filetype detection

 common/filetype.c   | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
 common/partitions.c |  2 ++
 include/filetype.h  |  1 +
 3 files changed, 51 insertions(+)

-- 
2.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
