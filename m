Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr770040.outbound.protection.outlook.com
 ([40.107.77.40] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsuk-0002ko-5R
 for barebox@lists.infradead.org; Fri, 14 Jun 2019 20:35:11 +0000
From: Cory Tusar <Cory.Tusar@zii.aero>
Date: Fri, 14 Jun 2019 20:35:04 +0000
Message-ID: <20190614203438.18900-1-cory.tusar@zii.aero>
Content-Language: en-US
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
Subject: [PATCH 0/2] Fix machine-id operation
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Chris Healy <Chris.Healy@zii.aero>

Hi all,

What follows is a short series that fixes a pair of problems I
encountered when trying to use a machine-id value to boot a specific
disk partition on several of our platforms.

Best regards,
-Cory


Cory Tusar (2):
  common: boot: Instantiate storage for global.boot.machine_id
  common: blspec: Both environment and config file machine-id must match

 common/blspec.c | 14 ++++++--------
 common/boot.c   |  9 +++++++++
 2 files changed, 15 insertions(+), 8 deletions(-)

-- 
2.21.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
