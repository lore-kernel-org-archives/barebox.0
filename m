Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQvm-00015i-VF
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:59:59 +0000
Date: Sun, 15 Apr 2012 16:59:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120415145953.GK3852@pengutronix.de>
References: <1334322272-26898-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334322272-26898-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH V2 0/3] MPC85xx support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Fri, Apr 13, 2012 at 02:04:29PM +0100, Renaud Barbier wrote:
> This patchset introduces the MPC85xx architecture to Barebox. The
> existing PPC code is modified to enable multiple PowerPC architecture
> support. All existing architecture specific MPC5xxx code which prevents
> adding additional architectures is moved into the architecture specific
> subdirectories and the PCM030 configuration fixed to use this new
> configuration.
> 
> Base MPC85xx infrastructure is added to enable the required
> functionality for a minimal boot target in 32 bit addressing mode
> using an e500v2 core.
> 
> Finally support is added for a minimal Freescale P2020RDB platform with
> driver support currently limited to NOR and serial port only.
> 
> Renaud Barbier (3):
>   Preparation stage to support multiple PPC architectures
>   Minimal support of the MPC85xx architecture
>   Minimal P2020RDB platform support and configuration file
> 

Much better than the last version, thanks.

I realized that you base parts of your code on the unused board_data. I
just sent out a patch to remove the unused code, and you shouldn't use
it on the new mpc85xx support also.

I'll have a close look at your series later, this is only one thing I
realized when looking at it.

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
