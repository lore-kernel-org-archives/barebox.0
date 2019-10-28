Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP2ku-0002TG-K8
 for barebox@lists.infradead.org; Mon, 28 Oct 2019 11:00:14 +0000
Date: Mon, 28 Oct 2019 12:00:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191028110004.t2vcryjm4ymoeqtm@pengutronix.de>
References: <1571912781-17152-1-git-send-email-thomas.haemmerle@wolfvision.net>
 <1572008129-24020-1-git-send-email-thomas.haemmerle@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572008129-24020-1-git-send-email-thomas.haemmerle@wolfvision.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 0/4] ARM: zynqmp: add support for bitstream loading
To: Thomas =?iso-8859-15?Q?H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Oct 25, 2019 at 12:55:38PM +0000, Thomas H=E4mmerle wrote:
> From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
> =

> Changes from v1:
> - remove dts commits
> - add commit for pmu and trustzone firmware virsion macro
> - split bin-header validation and byte-order detection
> - add description for bitstream
> =

> Michael Tretter (1):
>   firmware: zynqmp-fpga: print Xilinx bitstream header
> =

> Thomas Haemmerle (3):
>   firmware-zynqmp: add macros for PMU and trustzone firmware versions
>   firmware-zynqmp: extend driver with fpga relavant functions
>   firmware: zynqmp-fpga: introduce driver to load bitstream to FPGA

Applied, thanks

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
