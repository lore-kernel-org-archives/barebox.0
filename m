Delivery-date: Tue, 14 Nov 2023 09:47:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2p5F-00B759-00
	for lore@lore.pengutronix.de;
	Tue, 14 Nov 2023 09:47:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2p5E-0004p9-Rd
	for lore@pengutronix.de; Tue, 14 Nov 2023 09:47:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sNyIY97QMoOBrjRDp9WacotshEntpwcVNtIh1zb+MqE=; b=i/RRTUG4LEax+PtW1pPsoU74md
	l1u5FxaZG2qZh6p/vXtuQZ+UM0TmpliSTo0MiRcDV445JNLbW1AjX2M2ODBYYrtseZxZvhsMW2iMB
	U2/W7aVpxTkw8uluFVcmbEC8qlaW0y81+o3reHn92VTgexoM+ivoWS9zoWDWT9mInR6yDdygA0tDK
	JO4I4PjotMsDQR38dXgF4v8tAHIUuC+JuzvCGMuPugVX+0szrDeq3KGso7SazHTWakP0nxLrU0nts
	CtSBCiCokylXjRKJci+JpU65b1Z54fginAeg3kfzVNCCoJIrmtKLbITKrbqJW8kKfvU9RaUqVq6ZA
	RfNra+/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2p3p-00FPyC-3C;
	Tue, 14 Nov 2023 08:46:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2p3m-00FPxE-2N
	for barebox@lists.infradead.org;
	Tue, 14 Nov 2023 08:46:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r2p3l-0004Wp-Bw; Tue, 14 Nov 2023 09:46:13 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r2p3k-008x2U-Vj; Tue, 14 Nov 2023 09:46:12 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r2p3k-001xIV-TT; Tue, 14 Nov 2023 09:46:12 +0100
Date: Tue, 14 Nov 2023 09:46:12 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231114084612.GU3359458@pengutronix.de>
References: <20231109114707.1354502-1-a.fatoum@pengutronix.de>
 <20231113130350.GS3359458@pengutronix.de>
 <546aba5d-d506-52fd-de23-6bc12805ddd4@pengutronix.de>
 <20231114082341.GT3359458@pengutronix.de>
 <785ceb84-47cc-199e-e261-dec7d8a17cf1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <785ceb84-47cc-199e-e261-dec7d8a17cf1@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_004614_773783_E8CC1D12 
X-CRM114-Status: GOOD (  45.02  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] console: provide best-effort clk_get_for_console
 helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Nov 14, 2023 at 09:33:47AM +0100, Ahmad Fatoum wrote:
> On 14.11.23 09:23, Sascha Hauer wrote:
> > On Mon, Nov 13, 2023 at 04:02:56PM +0100, Ahmad Fatoum wrote:
> >> On 13.11.23 14:03, Sascha Hauer wrote:
> >>> On Thu, Nov 09, 2023 at 12:47:06PM +0100, Ahmad Fatoum wrote:
> >>>> From: Ahmad Fatoum <ahmad@a3f.at>
> >>>>
> >>>> clk_get will return -EPROBE_DEFER if clock provider hasn't yet been
> >>>> probed. In a system with deep probe enabled, dependencies are probed
> >>>> on demand, so a -EPROBE_DEFER return is final and the console probe
> >>>> will never succeed.
> >>>>
> >>>> CONFIG_DEBUG_LL is often used to debug this, but because the low-level
> >>>> console is not interactive, it's a bit cumbersome. Improve upon this a
> >>>> bit, by providing a clk_get_for_console helper that returns NULL if and
> >>>> only if we are sure that a clock provider will not be probed.
> >>>>
> >>>> In that case, the driver can skip code paths initialization code and
> >>>> baud rate setting dependent on having access to the clock and still
> >>>> register a console that reuses what was set up by CONFIG_DEBUG_LL.
> >>>>
> >>>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> >>>> ---
> >>>>  include/console.h   | 26 ++++++++++++++++++++++++++
> >>>>  include/linux/clk.h | 21 +++++++++++++++++++++
> >>>>  2 files changed, 47 insertions(+)
> >>>>
> >>>> diff --git a/include/console.h b/include/console.h
> >>>> index 586b68f73301..b8c901801e9f 100644
> >>>> --- a/include/console.h
> >>>> +++ b/include/console.h
> >>>> @@ -8,6 +8,7 @@
> >>>>  #define _CONSOLE_H_
> >>>>  
> >>>>  #include <param.h>
> >>>> +#include <linux/clk.h>
> >>>>  #include <linux/list.h>
> >>>>  #include <driver.h>
> >>>>  #include <serdev.h>
> >>>> @@ -208,4 +209,29 @@ static inline void console_ctrlc_allow(void) { }
> >>>>  static inline void console_ctrlc_forbid(void) { }
> >>>>  #endif
> >>>>  
> >>>> +/**
> >>>> + * clk_get_for_console - get clock, ignoring known unavailable clock controller
> >>>> + * @dev: device for clock "consumer"
> >>>> + * @id: clock consumer ID
> >>>> + *
> >>>> + * Return: a struct clk corresponding to the clock producer, a
> >>>> + * valid IS_ERR() condition containing errno or NULL if it could
> >>>> + * be determined that the clock producer will never be probed in
> >>>> + * absence of modules. The NULL return allows serial drivers to
> >>>> + * skip clock handling and rely on CONFIG_DEBUG_LL.
> >>>> + */
> >>>> +static inline struct clk *clk_get_for_console(struct device *dev, const char *id)
> >>>> +{
> >>>> +	struct clk *clk;
> >>>> +
> >>>> +	if (!IS_ENABLED(CONFIG_DEBUG_LL))
> >>>> +		return clk_get(dev, id);
> >>>
> >>> There are several SoCs out there where the UART is enabled by the ROM
> >>> already, on these we don't need to have CONFIG_DEBUG_LL enabled for a
> >>> working UART.
> >>
> >> Those SoCs can still implement CONFIG_DEBUG_LL and just skip the
> >> initialization step.
> >>
> >>> Maybe testing for the UART enable bit in probe() would be a better
> >>> indication that the UART is already in a working state?
> >>
> >> If clk turns out to be not enabled, system would hang on e.g. i.MX.
> > 
> > That can happen with your patch as well as you don't limit the
> > usage of clk_get_for_console() to the UART putc_ll is configured
> > for. Initializing one of the other UARTs might hang your system
> > once you access a register.
> 
> That's why it's a debugging measure behind DEBUG_LL, so you need to
> opt-in into this.

The opt-in in your case is that you decided that this quirk works with
the stm32 UART driver, but really it might only work on the SoC you
tested it with and maybe only with this specific firmware version which
uses clocks provided via SCMI.

> 
> > 
> >>
> >> This is a mere debugging measure for SoCs with complex clock controllers
> >> backed by firmware, so I think having to enable CONFIG_DEBUG_LL to use
> >> is acceptable.
> > 
> > Another option would be to implement and use a GETC_LL() macro. This
> > requires some thinking how this can be integrated into the console
> > code, but would in the end be more universally usable. With this we
> > could make barebox interactive even when the real serial driver is
> > not compiled in (or not even yet existing). See below for a prototype.
> 
> I don't think the DEBUG_LL API should be extended. Rather we should
> look into how to inherit PBL console in barebox proper. But that's a
> bigger change, thus the middle ground in my patch.

Fine with me, but then please let's don't clutter the current code with
wobbly special purpose solutions.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


