Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJrtm-0001rP-AS
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 19:47:44 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 16 Apr 2012 21:47:12 +0200
Message-Id: <1334605638-23095-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 0/6] mci: pxamci fixes
To: barebox@lists.infradead.org

This serie was triggered by several tests to copy files from
one directory to another on 2 SD cards :
 - one slow 256MB card
 - one fast 8G Transcend 8X card

The fixes improve :
 - writes which do no longer fail (mostly because of R1b and
 CMD12 handling)
 - initial mounting of SD card from env (poweron ramp delay)

Happy review.

Robert Jarzmik (6):
  mci: pxamci define timeouts
  mci: pxamci change clocks handling
  mci: pxamci fix response type
  mci: pxamci fix CMD12 handling
  mci: pxamci fix R1b responses
  mci: pxamci poweron ramp delay

 drivers/mci/pxamci.c |   49 +++++++++++++++++++++++++++++++------------------
 drivers/mci/pxamci.h |    1 +
 2 files changed, 32 insertions(+), 18 deletions(-)

-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
