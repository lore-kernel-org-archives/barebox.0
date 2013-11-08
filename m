Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Veqpo-0002Ri-Gm
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 18:31:09 +0000
Received: from localhost (AToulouse-651-1-90-186.w90-16.abo.wanadoo.fr
 [90.16.209.186])
 by mail.free-electrons.com (Postfix) with ESMTPSA id 2AABC7CA
 for <barebox@lists.infradead.org>; Fri,  8 Nov 2013 19:30:40 +0100 (CET)
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Fri,  8 Nov 2013 19:30:38 +0100
Message-Id: <1383935439-23623-2-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1383935439-23623-1-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1383935439-23623-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH 1/2] scripts/setupmbr: fix documentation
To: barebox@lists.infradead.org

The documentation says setupmbr should be used with the image named
'barebox', but it should instead be done with the 'barebox.bin'
image. Attempting to use setupmbr on the ELF barebox image simply
fails:

$ ./scripts/setupmbr/setupmbr -s 32 -m ./barebox -d disk.img
No MBR signature found
barebox image seems not valid: Bad MBR signature

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 scripts/setupmbr/setupmbr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/setupmbr/setupmbr.c b/scripts/setupmbr/setupmbr.c
index 918fbe3..0060c2e 100644
--- a/scripts/setupmbr/setupmbr.c
+++ b/scripts/setupmbr/setupmbr.c
@@ -666,10 +666,10 @@ and populating the root filesystem for example) to make it useful.
 In the next step, @a barebox gets installed to this boot media:
 
 @verbatim
-[jb@host]~> scripts/setupmbr/setupmbr -s 32 -m ./barebox -d /dev/sda
+[jb@host]~> scripts/setupmbr/setupmbr -s 32 -m ./barebox.bin -d /dev/sda
 @endverbatim
 
-This command writes the @a barebox image file './barebox' onto the device
+This command writes the @a barebox image file './barebox.bin' onto the device
 @p /dev/sda.
 
 The @p -s option will keep the persistant storage sectors free and untouched
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
