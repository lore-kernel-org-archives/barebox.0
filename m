Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zhmz3-0005ng-R8
 for barebox@lists.infradead.org; Thu, 01 Oct 2015 23:09:54 +0000
Received: by wicfx3 with SMTP id fx3so11254498wic.1
 for <barebox@lists.infradead.org>; Thu, 01 Oct 2015 16:09:31 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Fri,  2 Oct 2015 00:08:37 +0100
Message-Id: <1443740919-6341-1-git-send-email-vicencb@gmail.com>
In-Reply-To: <20151001060447.GG7858@pengutronix.de>
References: <20151001060447.GG7858@pengutronix.de>
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
Subject: [PATCH 0/2] second version for "be more flexible when searching for
 second stage"
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Vicente Bergas <vicencb@gmail.com>

Hello,
as suggested I've improved the filesystem-type detection, but, as am not
familiar with barebox internals was fumbling a bit and the resulting
cdev_detect_type is a version of file_name_detect_type.

During testing it autodetected MBR+FAT and MBR+EXT4 correctly.

Regards,
  Vicente.

Vicente Bergas (2):
  detect_fs: use device instead of file
  xload: be more flexible when searching for second stage bootloader.

 arch/arm/mach-omap/xload.c |  4 +++-
 common/filetype.c          | 37 +++++++++++++++++++++++++++++++++++++++
 fs/fs.c                    |  2 +-
 include/filetype.h         |  1 +
 4 files changed, 44 insertions(+), 2 deletions(-)

-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
