Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9l7W-0000BL-43
 for barebox@lists.infradead.org; Thu, 05 Mar 2020 07:40:40 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Mar 2020 08:40:30 +0100
Message-Id: <20200305074032.29725-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 0/2] state: deal gracefully with runtime bucket corruption
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Series fixes two issues when buckets become corrupted during barebox
execution. Both issues are currently sorted out after one more reset,
so I'd suggest this goes into next despite being a fix.

Cheers,
Ahmad Fatoum (2):
  state: backend_storage: deal gracefully with runtime bucket corruption
  state: treat state with all-invalid buckets as dirty

 common/state/backend_storage.c | 2 ++
 common/state/state.c           | 7 +++----
 2 files changed, 5 insertions(+), 4 deletions(-)

-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
