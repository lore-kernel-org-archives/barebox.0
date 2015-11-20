Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzgKc-0003ii-F0
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 07:42:06 +0000
Date: Fri, 20 Nov 2015 08:41:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151120074144.GG11966@pengutronix.de>
References: <1447937904-4637-1-git-send-email-j.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447937904-4637-1-git-send-email-j.remmet@phytec.de>
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
Subject: Re: bootm multi uimage from nand
To: Jan Remmet <j.remmet@phytec.de>
Cc: barebox@lists.infradead.org

Hi Jan,

On Thu, Nov 19, 2015 at 01:58:22PM +0100, Jan Remmet wrote:
> I tried to boot a multi uImage from nand containing the kerenl and several
> device trees. It was failing because bootm want to open the .bb device multiblei
> times to check the filetype.
> I separate the changes for review, feel free to squash the patches.

I kept them as two separate patches just in case git bisect ever points
to one of them. Thanks, applied.

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
