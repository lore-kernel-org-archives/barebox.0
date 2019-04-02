Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBMQF-0004G7-4P
 for barebox@lists.infradead.org; Tue, 02 Apr 2019 16:38:04 +0000
Date: Tue, 2 Apr 2019 18:37:56 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190402163756.GA7902@ravnborg.org>
References: <20190401093106.4595-1-a.fatoum@pengutronix.de>
 <20190401213427.6365-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190401213427.6365-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 11/10] clk: at91: fix warning about missing const-safety
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 01, 2019 at 11:34:27PM +0200, Ahmad Fatoum wrote:
> compiling clk-generated.c results in:
> 
> warning: passing argument 1 of 'memcpy' discards 'const' qualifier from
> pointer target type [-Wdiscarded-qualifiers]
>   memcpy(gck->hw.parent_names, parent_names, parents_array_size);
>          ~~~~~~~^~~~~~~~~~~~~
> 
> Avoid this by replacing the xzalloc+memcpy pair with xmemdup.
> Zero-initialization of the buffer isn't necessary, because
> memcpy spans the whole buffer.
> 
> Suggested-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
