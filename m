Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqbRL-0004LM-DF
 for barebox@lists.infradead.org; Mon, 26 Oct 2015 06:39:32 +0000
Date: Mon, 26 Oct 2015 07:39:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151026063909.GR14476@pengutronix.de>
References: <20151023072818.GA11271@L64>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151023072818.GA11271@L64>
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
Subject: Re: [vedio] support no-ascii fonts?
To: Kevin Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

Hi Kevin,

On Fri, Oct 23, 2015 at 03:28:18PM +0800, Kevin Du Huanpeng wrote:
> Hi, How about add a index before get fontdata?
> so, we will able to support non-ascii fonts.
> like:
> 	drivers/video/fbconsole.c
> 	-->	static void drawchar(struct fbc_priv *priv, int x, int y, char c)
> 		{
> 			...
> 	-		inbuf = &priv->fontdata[c * priv->font_height];
> 	+		if(priv->index) {
> 	+			inbuf = look up index in the table.
> 	+		}
> 	+		else {
> 	+			inbuf = &priv->fontdata[c * priv->font_height];
> 	+		}
> the index table like:
> 	struct font_index fontname_index = {
> 		{ 0xXXXX, 0xYYYY },	/* where, 0xXXXX is the unioncode of the char     */
> 		{ 0xXXXX, 0xYYYY },	/* the 0xYYYY is the index of the fontdata array. */
> 		{ 0xXXXX, 0xYYYY },	/* normally, we don't need a full char set.       */
> 		{ 0xXXXX, 0xYYYY },	/* just put the used chars in the table.          */
> 		{ 0xXXXX, 0xYYYY },	/* we also have a tool to generate fontdata array.*/
> 	};

If you want to support non-ascii fonts then why don't you simply add
one? Or is your concern that too much binary size is used when you only
need a small fraction of a font but you always have to provide 256
chars?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
