Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBMvd-0003Ic-BS
 for barebox@lists.infradead.org; Tue, 02 Apr 2019 17:10:30 +0000
Date: Tue, 2 Apr 2019 19:10:24 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190402171024.GB7902@ravnborg.org>
References: <20190401103256.17914-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190401103256.17914-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] clk: at91: fix compilation errors in sama5d2.c
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

Thanks for looking into this.

On Mon, Apr 01, 2019 at 12:32:57PM +0200, Ahmad Fatoum wrote:
> sama5d2 was added along with the update to the upstream
> device tree bindings, but wasn't wired in anywhere.
> 
> To prepare for usage in future sama5d2 support, fix
> compilation errors related to absence of locks and
> unavailability of audio/i2s clock/pll handling.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Another approach could have been to stub out the
non-existing functions to make diff between the kernel
and the barebox variant smaller.

Did you consider that approach?

The whole section in CONFIG_HAVE_AT91_AUDIO_PLL in dt-compat.c
is also something we could drop btw. if we go the "drop all audio" stuff
from clk. Also prototypes in pmc.h

The patch itself looked fine. But I think that from a maintenance point of
view should stub us out of it.
Let me know what you think.

	Sam


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
