Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIn1N-0007UT-Ud
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 05:31:39 +0000
Date: Mon, 30 Mar 2020 07:31:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200330053136.GU27288@pengutronix.de>
References: <20200316110008.2909-3-cleger@kalray.eu>
 <20200325172737.8621-1-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325172737.8621-1-cleger@kalray.eu>
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
Subject: Re: [PATCH v2 0/2] Allow parsing more than one memory node
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org

On Wed, Mar 25, 2020 at 06:27:35PM +0100, Clement Leger wrote:
> Currently, barebox can only parse one memory node. This means that
> all other memory nodes (with device_type == "memory") will be ignored
> while parsing memory.
> This patchset add a function of_probe_memory which will call
> of_add_memory for each found memory node. Additionally, of_add_memory
> has been modified to allow being called multiple times and correctly
> add all memory banks.
> 
> Changes v1 -> v2
>  - Reorder patches
>  - Remove legacy "memory" node handling
> 
> Clement Leger (2):
>   of: base: allow of_add_memory to be called multiple times
>   of: base: parse all available memory nodes

Applied, thanks

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
