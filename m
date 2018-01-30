Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egU10-0002Df-I5
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 11:23:52 +0000
References: <20180129163004.10512-1-l.stach@pengutronix.de>
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <32b116a0-5597-6290-10f7-d4578185a00a@pengutronix.de>
Date: Tue, 30 Jan 2018 12:23:35 +0100
MIME-Version: 1.0
In-Reply-To: <20180129163004.10512-1-l.stach@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/10] HYP mode handling and RasPi 3 support
To: Lucas Stach <l.stach@pengutronix.de>, barebox@lists.infradead.org

Hi,

On 29.01.2018 17:29, Lucas Stach wrote:
> Hi,
> 
> this series allows Barebox to be entered in HYP mode. As the HYP mode
> is a whole different world it just makes sure to install the hooks
> needed to get back into HYP and then switches to SVC mode as fast as
> it can. The kernel is then started in HYP mode by default.
> 
> This is needed in order to get RasPi 3 support in place, where the
> firmware opts to hand us the CPUs in HYP mode.
> 
> I've tested this series on another ARMv7 board, to make sure I didn't
> break something obvious, but I would still welcome some eyeballs on
> this code, as it touches a good deal of the lowlevel code.
>   
> Enrico Joerns (1):
>    ARM: rpi: add revision IDs for Pi 3 Model B and Pi Zero
> 
> Lucas Stach (9):
>    ARM: import opcode helpers from Linux kernel
>    ARM: safely switch from HYP to SVC mode if required
>    ARM: allow secure monitor code to be built without PSCI
>    ARM: add file for HYP mode related setup
>    ARM: don't try to install secure monitor when entered in HYP mode
>    ARM: default to starting kernel in HYP mode when entered in HYP
>    ARM: install HYP vectors at PBL and Barebox entry
>    ARM: rpi: add raspberry pi 3 support
>    ARM: rpi: autosize malloc area

Thank you! I tested it on my RPi 1/2/3 board farm as well as a 
Nitrogen6x board, works as intended. Except for the documentation, for 
which I'll send a patch in the next mail :)

Tested-by: Roland Hieber <r.hieber@pengutronix.de>

-- 
Pengutronix e.K.                  | Roland Hieber               |
Industrial Linux Solutions        | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
