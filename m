Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpts-0007Go-VE
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 14:15:50 +0000
Date: Mon, 15 Jun 2020 16:15:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200615141545.GU11869@pengutronix.de>
References: <20200612071036.27864-1-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612071036.27864-1-cleger@kalray.eu>
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
Subject: Re: [PATCH v6 0/8] elf: add better bootm support
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>

On Fri, Jun 12, 2020 at 09:10:28AM +0200, Clement Leger wrote:
> Currently, when booting an elf file using "bootm /dev/mtdx", bootm will
> simply pass the file to the bootm handler and the read done on it will
> read the entire flash partition. This series starts by some cleanup and
> then modify the elf loader to load the elf file without copying the whole
> elf file to an intermediate buffer. Only the elf header is copied in
> order to parse the elf file into a list of segment and then, the segments
> are loaded directly from the file.
> 
> A special handling for the elf file is also added in bootm data to allow
> using directly the elf file structure. Finally the mips bootm handler is
> modified to use bootm_load_os directly instead of manual elf loading.
> 
> Compilation for both mips and arm has been tested but run on qemu-malta was not
> possible. Changes have been tested on kvx architecture for which bootm support
> has been added and will be submitted.
> 
> Changes v5 -> v6
>  - Add missing elf boundaries computation patch

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
