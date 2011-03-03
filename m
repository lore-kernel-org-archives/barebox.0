Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvAVW-00086U-3L
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 15:32:03 +0000
Date: Thu, 3 Mar 2011 17:31:47 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20110303153146.GI20423@jasper.tkos.co.il>
References: <cover.1281966840.git.baruch@tkos.co.il>
	<0c648f6900c08f4c3db74b5a2eb9878e393bca69.1281966840.git.baruch@tkos.co.il>
	<4D6FB01B.7000406@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4D6FB01B.7000406@eukrea.com>
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
Subject: Re: [PATCH v2 4/6] imx25: add chip specific IIM fusebox defines
To: Eric Benard <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Thu, Mar 03, 2011 at 04:13:31PM +0100, Eric Benard wrote:
> do you have an example on how to blow fuses on i.MX25 for example
> for setting the mac address or the boot configuration bits ?

Here you go:

# allow fuses blow
imx_iim_bank0.permanent_write_enable=1
# put the MAC address 02:4b:b1:71:0f:29
mw -b -d /dev/imx_iim_bank0 26+6 0x02 0x4b 0xb1 0x71 0x0f 0x29
# make the MAC address permanent (not more fuses blow)
mw -b -d /dev/imx_iim_bank0 0+1 0x04
# disallow fuses blow
imx_iim_bank0.permanent_write_enable=0

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
