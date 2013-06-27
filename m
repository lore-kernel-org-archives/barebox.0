Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Us82I-0002Wn-DO
 for barebox@lists.infradead.org; Thu, 27 Jun 2013 08:58:39 +0000
Date: Thu, 27 Jun 2013 10:58:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130627085816.GF516@pengutronix.de>
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130627065118.GA10414@pengutronix.de>
 <51CBEEB2.5090209@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51CBEEB2.5090209@gmail.com>
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
Subject: Re: [PATCH 0/9] OF: address and device related sync and cleanup
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 27, 2013 at 09:50:10AM +0200, Sebastian Hesselbarth wrote:
> On 06/27/13 08:51, Sascha Hauer wrote:
> >On Tue, Jun 25, 2013 at 11:20:38AM +0200, Sebastian Hesselbarth wrote:
> >>This patch set comprises a quite unsorted bunch of patches to further
> >>improve and cleanup OF API. With address and device related functions,
> >>two more API sets of Linux OF API are imported and modified to match
> >>barebox driver core.
> >>
> >>With above API improvements, device and resource pointer are removed
> >>from struct device_node. Futher, of_translate_address, of_probe, and
> >>of_add_memory are converted to recently introduced OF API.
> >>
> >>At last, of_free is renamed to of_delete_node, which gives a better
> >>impression of what the function is doing.
> >>
> >>Sebastian Hesselbarth (9):
> >>   OF: import address related functions from Linux OF API
> >>   OF: convert of_translate_address to new API
> >>   OF: base: move OF_ROOT_NODE_ defines to local OF code
> >>   OF: import bus/device related functions from Linux OF API
> >>   OF: base: use of_platform_populate for probing
> >>   OF: base: remove dead device related functions
> >>   OF: remove device and resource pointer from struct device_node
> >>   OF: base: convert of_add_memory to OF API
> >>   OF: base: rename of_free to of_delete_node
> >
> >Applied this series with the change that I removed the dead code
> >ifdeffed with CONFIG_PPC_DCR.
> 
> Ok, great! Next patch sets will be focused on actually using the
> DT improvements. I have an SPI driver for MACH_MVEBU ready and
> running, and I am working on importing generic SDHCI from Linux.

The sdhc driver in Linux is a big piece of shit which uses the wrong
abstraction model. This is shown by the fact that 32bits are not enough
to abstract the quirks. Even with all these quirks the i.MX part of this
driver has to implement driver logic in the register access functions.
That just insane. I'm not really looking forward to add this driver
to barebox.

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
