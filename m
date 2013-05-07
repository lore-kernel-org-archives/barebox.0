Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f207.mail.ru ([217.69.128.146])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZgKn-0001Aw-NA
 for barebox@lists.infradead.org; Tue, 07 May 2013 11:45:31 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 07 May 2013 15:45:04 +0400
Message-ID: <1367927104.601416016@f207.mail.ru>
In-Reply-To: <1367012916-22780-3-git-send-email-s.hauer@pengutronix.de>
References: <1366977055.331524144@f355.mail.ru>
 <1367012916-22780-1-git-send-email-s.hauer@pengutronix.de>
 <1367012916-22780-3-git-send-email-s.hauer@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSCAyLzJdIEFSTTogaS5NWDogY2N4bXg1MTogZGV0ZWN0IFNE?=
 =?UTF-8?B?UkFNIHNpemUgYnkgYm9hcmQgaWQ=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> This partly reverts:
> 
> commit 697e02b74fddd80527e8ababba10239c83dba029
> Author: Alexander Shiyan <shc_work@mail.ru>
> Date:   Tue Jan 22 15:08:31 2013 +0400
> 
>     ARM: ccmx51: Remove SDRAM size settings
> 
>     This patch removes SDRAM memory size setting from board due
>     to auto detect last one by ESDCTL.
> 
>     Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
>     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> The board originally configured the SDRAM controller for the
> maximum size and detected the usable SDRAM size by reading the
> board id. This became broken after switching to automatic SDRAM
> size detection by reading back ESDCTL values.
> 
> This patch brings back the old behaviour.

Please, apply both to git.
Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
