Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6Vod-0001KB-49
 for barebox@lists.infradead.org; Mon, 01 Feb 2021 09:48:16 +0000
Date: Mon, 1 Feb 2021 10:46:02 +0100
Message-ID: <20210201094602.GP19583@pengutronix.de>
References: <MN2PR16MB31357A9BB6E7D4B2B31274A591B99@MN2PR16MB3135.namprd16.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN2PR16MB31357A9BB6E7D4B2B31274A591B99@MN2PR16MB3135.namprd16.prod.outlook.com>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: Layerscape secure boot
To: "Barbier, Renaud" <renaud.barbier@abaco.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Renaud,

On Fri, Jan 29, 2021 at 05:59:02PM +0000, Barbier, Renaud wrote:
> Is secure boot supported or planned to be supported on Layerscape
> (LS1046A)?  This will be our first board supporting secure boot.

We have no plans adding that.

> 
> If not supported yet we intend to support it (pending having the
> documentation/SDK...) and would like to do in a way that could be
> accepted upstream.

Nice :)

> 
> Are other boards like the IMX6/8 in barebox supporting secure boot a
> reference to do secure boot for other boards?  I guess it quite
> hardware specific.

It seems that NXP reused parts of the secure boot concept from i.MX. The
overall concept on i.MX is known as "High Assurance Boot" (HAB), I
haven't found that on Layerscape. However, just like the i.MX the
Layerscape also has "Command Sequence Files" (CSF), the Code signing
Tool (CST) also works on Layerscape, and on Layerscape there are also
"Super Root Key hashes". I suspect the overall process is quite similar
to i.MX, so the HAB code could probably be used as a stone quarry.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
