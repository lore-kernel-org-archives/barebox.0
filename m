Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hB3rJ-00020W-2W
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 20:48:46 +0000
Date: Mon, 1 Apr 2019 22:48:42 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190401204842.GE2534@ravnborg.org>
References: <20190401093106.4595-1-a.fatoum@pengutronix.de>
 <20190401093106.4595-11-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190401093106.4595-11-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 10/10] clk: at91: fix warning about missing const-safety
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Mon, Apr 01, 2019 at 11:31:06AM +0200, Ahmad Fatoum wrote:
> compiling clk-main.c results in:
> 
> warning: passing argument 1 of 'memcpy' discards 'const' qualifier from
> pointer target type [-Wdiscarded-qualifiers]
>   memcpy(clkmain->clk.parent_names, parent_names, parents_array_size);
>            ~~~~~~~~~~~~^~~~~~~~~~~~~
> 
> Avoid this by replacing the xzalloc+memcpy pair with xmemdup.
> Zero-initialization of the buffer isn't necessary, because
> memcpy spans the whole buffer.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

It looks like clk-generated.c would suffer from the same
if you managed to build it.
Could you maybe verify and fix this too?

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
