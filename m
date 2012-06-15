Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SfTS7-0001XN-2w
 for barebox@lists.infradead.org; Fri, 15 Jun 2012 10:08:27 +0000
Received: by wgbds1 with SMTP id ds1so1934669wgb.18
 for <barebox@lists.infradead.org>; Fri, 15 Jun 2012 03:08:26 -0700 (PDT)
From: Roberto Nibali <rnibali@gmail.com>
Date: Fri, 15 Jun 2012 12:08:13 +0200
Message-Id: <1339754895-5129-1-git-send-email-rnibali@gmail.com>
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
Subject: [PATCH 0/2] Small fixes
To: barebox@lists.infradead.org

While going through my current git tree, I have found two minor things I
wanted to offload to master. Please review and consider applying.

Roberto Nibali (2):
  Remove superfluous SYSCTL_RSTA
  Deal properly with scripts/bareboxenv-target

 .gitignore              |    1 +
 Makefile                |    1 +
 drivers/mci/imx-esdhc.h |    1 -
 3 files changed, 2 insertions(+), 1 deletion(-)

-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
