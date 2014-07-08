Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171]
 helo=mailgw1.data-modul.com)
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4Pyh-0004q8-IL
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 07:38:16 +0000
From: Zahari Doychev <zahari.doychev@linux.com>
Date: Tue,  8 Jul 2014 09:37:34 +0200
Message-Id: <cover.1404734020.git.zahari.doychev@linux.com>
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
Subject: [PATCH] fix mtd_part_lock/unlock
To: barebox@lists.infradead.org

Hi,

Some mtd drivers does not define lock and unlock partition functions. This
patch avoids crashing when these undefined functions are called from barebox
code e.g. saveenv. Please review this patch and apply it if it is ok.

Thanks


Zahari Doychev (1):
  drivers/mtd: fix NULL pointer dereference in partition lock/unlock

 drivers/mtd/partition.c |    6 ++++++
 1 file changed, 6 insertions(+)

-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
