Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTqgL-0002rz-BD
 for barebox@lists.infradead.org; Thu, 23 May 2019 16:35:07 +0000
Date: Thu, 23 May 2019 18:34:55 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190523163455.GA6249@ravnborg.org>
References: <20190523142932.14673-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523142932.14673-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 1/2] clk: at91: fix compilation errors in sama5d2.c
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Thu, May 23, 2019 at 04:29:32PM +0200, Ahmad Fatoum wrote:
> sama5d2.c was added alongside the update to the remaining clk drivers
> to support the new upstream device tree bindings, but wasn't wired in
> anywhere.
> 
> To prepare for usage in future sama5d2 support, fix compilation errors
> related to absence of locks and unavailability of audio/i2s clock/pll
> handling.
> 
> With this change, there are no users for the few definition-less at91
> audio/i2s registration function declarations. So remove those as well.

Thanks for pciking this up.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
