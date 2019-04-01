Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hB3p0-0001ea-O8
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 20:46:25 +0000
Date: Mon, 1 Apr 2019 22:46:19 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190401204619.GD2534@ravnborg.org>
References: <20190401093106.4595-1-a.fatoum@pengutronix.de>
 <20190401093106.4595-10-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190401093106.4595-10-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 09/10] ARM: at91: remove at91sama5_get_ddram_size helper
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 01, 2019 at 11:31:05AM +0200, Ahmad Fatoum wrote:
> Substitute the current #ifdefery in at91sam9_ddrsdr.h by
> open-coding at91sama5_get_ddram_size wherever it was called.
> 
> Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
