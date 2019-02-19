Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwCDv-0000rX-VS
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 20:42:42 +0000
Date: Tue, 19 Feb 2019 21:42:33 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190219204233.GA14204@ravnborg.org>
References: <20190219120612.728-1-a.fatoum@pengutronix.de>
 <20190219120612.728-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190219120612.728-3-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 2/4] ARM: at91: debug_ll: make UART base address
 configurable
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Tue, Feb 19, 2019 at 01:06:10PM +0100, Ahmad Fatoum wrote:
> This is in line with other platforms such as i.MX, which allow
> specifying a debug port. As we can't use port indices because
> the UARTs aren't mapped consecutively, allow specifying a hex
> base at configuration time.
> 
> A side effect of this patch is that sama5d4's HAVE_AT91_DBGU2
> is now honored as well. Previously anything besides DBGU0
> defaulted to DBGU1.

This approch hardcoded the DBGU address based on the configuration.
Can you somehow come up with something that is run-time configured?
So we can continue towards the goal to have multi-image support
for at91.
The current approch will limit us to a single type of SOC -
and we may try to combine more than one SOC in the same multi-iamge
sometime in the future.

Maybe each board have to call an debug_ll_init(address) function or similar.
If not called we can use the default which is the common address
for most at91 SOCs.
Or maybe something smarter.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
