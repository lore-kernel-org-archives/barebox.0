Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YT6ef-0003Vq-5P
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 10:35:54 +0000
Date: Wed, 4 Mar 2015 11:35:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150304103531.GY11010@pengutronix.de>
References: <1425384899-18809-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425384899-18809-1-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH v3 00/13] sandbox OF integration
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 03, 2015 at 01:14:46PM +0100, Marc Kleine-Budde wrote:
> Hello Sascha,
> 
> these are the remaining patches that bring OF support to the sandbox so that
> enables testing of framworks which need the device tree.
> 
> changes since v2:
> - build sandbox with oftree support always, select CONFIG_OFTREE
> - the hostfile nodes in the device tree are now generated on the fly,
>   no need for stubs.
> - hostfile: switch to oftree only, remove platform data
> - hostfile: add possibility to specify name of device via:
>   --image <DEV>=<FILE>

Applied, thanks

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
