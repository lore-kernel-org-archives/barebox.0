Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx.til-technologies.net ([92.103.228.36])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFigs-0002FN-Cy
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 10:13:47 +0000
Message-ID: <5140519B.6000103@til-technologies.fr>
Date: Wed, 13 Mar 2013 11:14:51 +0100
From: Cerrato Renaud <r.cerrato@til-technologies.fr>
MIME-Version: 1.0
References: <CA+7xNQkAzpgjG8k9+XR1PQj74Fiag-0nwCi2C=vjP+bYaCAVnw@mail.gmail.com>
 <20130312165243.GB1568@game.jcrosoft.org>
In-Reply-To: <20130312165243.GB1568@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/7] AT91 debug unit typo fix
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Sorry. I should have read the posting guidelines beforehand. Should I start another subject for every patch I sent using [PATCH RESEND], or using a reply is acceptable?

Signed-off-by: Cerrato Renaud <r.cerrato@til-technologies.fr>
---

 arch/arm/mach-at91/include/mach/debug_ll.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/debug_ll.h b/arch/arm/mach-at91/include/mach/debug_ll.h
index 1a85ae4..42728a4 100644
--- a/arch/arm/mach-at91/include/mach/debug_ll.h
+++ b/arch/arm/mach-at91/include/mach/debug_ll.h
@@ -11,7 +11,7 @@
 #include <asm/io.h>
 #include <mach/hardware.h>
 
-#ifdef COFNIG_HAVE_AT91_DBGU0
+#ifdef CONFIG_HAVE_AT91_DBGU0
 #define UART_BASE    AT91_BASE_DBGU0
 #else
 #define UART_BASE    AT91_BASE_DBGU1
-- 
1.7.2.5

On 12/03/2013 17:52, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 16:39 Tue 12 Mar     , Renaud C. wrote:
>>    This patch fix the debug unit output by correcting a typo into an #ifdef
>>    statement.
> please resend the whole patch with inline patch
>
> no review otherwise
>
> Best Regards,
> J.
>
>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
