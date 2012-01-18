Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rndql-0000ez-Pm
 for barebox@lists.infradead.org; Wed, 18 Jan 2012 22:19:24 +0000
Received: by wibhq15 with SMTP id hq15so5205899wib.36
 for <barebox@lists.infradead.org>; Wed, 18 Jan 2012 14:19:21 -0800 (PST)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1326848854-21033-1-git-send-email-plagnioj@jcrosoft.com>
Date: Wed, 18 Jan 2012 23:19:15 +0100
In-Reply-To: <1326848854-21033-1-git-send-email-plagnioj@jcrosoft.com>
 (Jean-Christophe PLAGNIOL-VILLARD's message of "Wed, 18 Jan 2012
 02:07:33 +0100")
Message-ID: <87hazsodr0.fsf@macbook.be.48ers.dk>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] introduce barebox_bare_init_size to known the
 bare_init size and check it
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

>>>>> "JC" == Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

 JC> this allow to check we do not exceed the size of the SRAM as example
 JC> introduce BAREBOX_MAX_BARE_INIT_SIZE the maximum size of bare_init
 JC> this will allow your bare_init will fit in SRAM as example
 JC> ARCH can overwrite it via ARCH_BAREBOX_MAX_BARE_INIT_SIZE

 JC> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

 JC> +#include <linux/stringify.h>
 JC> +/* use 2 ASSERT because ld can not accept '"size" "10"' formet */

s/formet/format/

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
