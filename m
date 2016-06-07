Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bANEL-0003Bn-KW
 for barebox@lists.infradead.org; Tue, 07 Jun 2016 20:04:06 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 7 Jun 2016 20:03:44 +0000
Message-ID: <1465329832.15779.159.camel@rtred1test09.kymeta.local>
References: <1465329688.15779.156.camel@rtred1test09.kymeta.local>
In-Reply-To: <1465329688.15779.156.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <9B8955F64ABFBF45B73AA0C704494511@kymetacorp.com>
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
Subject: [PATCH 1/5] rtc: ds1307: Keep DT based RTC configuration from
 breaking DS1337/41
To: barebox <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

The DS1337 and DS1341 use a different configuration register layout
than the other supported ds1307 RTC chips.  The code that does the
DT based configuration doesn't support this layout and will
incorrectly program them.

This disables DT configuration for DS1337 and DS1341.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/rtc/rtc-ds1307.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index 73d88ba..86cba6e 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -382,7 +382,8 @@ read_rtc:
 	}
 
 	/* Configure clock using OF data if available */
-	if (IS_ENABLED(CONFIG_OFDEVICE) && np) {
+	if (IS_ENABLED(CONFIG_OFDEVICE) && np &&
+	    ds1307->type != ds_1337 && ds1307->type != ds_1341) {
 		u8 control = ds1307->regs[DS1307_REG_CONTROL];
 		u32 rate = 0;
 
-- 
2.7.0.25.gfc10eb5.dirty


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
