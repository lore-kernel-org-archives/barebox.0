Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tc6ML-0006EN-6X
 for barebox@lists.infradead.org; Sat, 24 Nov 2012 03:24:49 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so801567wgb.18
 for <barebox@lists.infradead.org>; Fri, 23 Nov 2012 19:24:44 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sat, 24 Nov 2012 04:24:22 +0100
Message-Id: <1353727464-15175-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 0/2] Some corrections on archosG9
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

In the patch series for archosG9 there were an attempt to improve file
transfers by reading files at once, but finally this solution was discarded.
Today I've checked the repository and found this solution there, perhaps this
is a misunderstanding and it's corrected here.
Sorry for not checking before.

The other change is just the inverse: a submitted patch that was not applied.

Vicente Bergas (2):
  uimage: fix misunderstanding in common/uimage.c
  archosg9: improve configuration

 arch/arm/boards/archosg9/env/config       |  4 +++-
 arch/arm/boards/archosg9/env/init/usbboot |  9 +++++----
 arch/arm/configs/archosg9_defconfig       |  2 +-
 common/uimage.c                           | 24 ------------------------
 4 files changed, 9 insertions(+), 30 deletions(-)

-- 
1.8.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
