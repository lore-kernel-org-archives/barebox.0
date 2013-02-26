Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1UANoe-0003UI-Pz
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 16:55:45 +0000
Received: from localhost (col31-4-88-188-83-94.fbx.proxad.net [88.188.83.94])
 by mail.free-electrons.com (Postfix) with ESMTPSA id 3FEDA813
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2013 17:55:44 +0100 (CET)
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Tue, 26 Feb 2013 17:55:40 +0100
Message-Id: <1361897742-3454-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCHv2 0/2] cfa10036: Retrieve RAM size at runtime
To: barebox@lists.infradead.org

Hi,

This patch series makes the cfa10036 retrieve its ram size at runtime.
Since the get_ram_size function was not safe to use when running from RAM,
we had to introduce a first patch that makes the execution of this function
from RAM safe.

Thanks,
Maxime

Maxime Ripard (2):
  memsize: Make get_ram_size RAM proof
  cfa10036: Retrieve the RAM size at runtime

 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |    3 ++-
 common/memsize.c                                 |   21 +++++++++++++++++++++
 2 files changed, 23 insertions(+), 1 deletion(-)

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
