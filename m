Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SPqDM-0003aS-CY
 for barebox@lists.infradead.org; Thu, 03 May 2012 07:12:37 +0000
Date: Thu, 3 May 2012 09:12:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120503071233.GG4141@pengutronix.de>
References: <1335864363-18383-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1335864363-18383-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH V4 0/4] MPC85xx support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Tue, May 01, 2012 at 10:25:59AM +0100, Renaud Barbier wrote:
> The patchset V4 introduces the MPC85xx architecture to Barebox and
> addresses the comments of the version 3. The existing PPC code is
> modified to enable multiple PowerPC architecture support.
> All existing architecture specific MPC5xxx code which prevents
> adding additional architectures is moved into the architecture specific
> subdirectories and the PCM030 configuration fixed to use this new
> configuration.
> 
> Base MPC85xx infrastructure is added to enable the required
> functionality for a minimal boot target in 32 bit addressing mode
> using an e500v2 core. To address V3 comments global variables that
> helped handling TLBs and LAWs are replaced by search functions.
> 
> Finally support is added for a minimal Freescale P2020RDB platform with
> driver support currently limited to NOR and serial port only.
> 
> Renaud Barbier (4):
>   Preparation stage to support multiple PPC architectures
>   Minimal support of the MPC85xx architecture
>   Header files update to support the mpc85xx.
>   Minimal P2020RDB platform support and configuration file

You might have noticed I applied parts of your patches, namely 1/4 and
the bulk of 3/4. A git rebase should make your patches a bit smaller and
should make you less dependent on future ppc changes.

Generally smaller patches are easier to review and will make merging
your series faster, so it would be nice if you could split this up a bit
more. This is especially important for the parts of the patches that
affect other users like mpc5200 aswell.

Sorry for not replying with a more detailed review, but your patch is
quite big and my spare time is rather small at the moment.

Thanks
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
