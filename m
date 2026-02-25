Delivery-date: Wed, 25 Feb 2026 10:53:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvBaI-005U3p-0A
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 10:53:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvBaI-0004ws-D7
	for lore@pengutronix.de; Wed, 25 Feb 2026 10:53:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aMnY+9ek7TxKN5LI0j1bGuIyNhRlaDqEukeyvBa2/U0=; b=EaUs+IhUjOoOu/YClYnhqIQ3pO
	/8XZMyg8lKoW8ZuzwF16m5XQxrPiKYJwmljlkLsDjMUGIBTTsSgAVdlp+QMvnvuBO4PMf15zqK4oS
	7fyJycUr4DgD2WVTbWb6hININerMvywbd/692oLcdH9fSx9/GPEZICzGJc8fjPT3KfU5vah/64pe0
	rnLZIo6yh0TVfcN0r3lhHWRx7OsxPAZtosjqL/HgCJcd3gZYaVJ1lPcCydFKnEncIq2kUFdzQXTJb
	svGv2hKt4viNgfhBuT3ICGsuzchyvrHhyvdTCj4DdNBb02X0BYruEf6o13ahX91ltO5UcWnaAul1x
	2niPsg7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvBZU-00000003jDQ-17Yi;
	Wed, 25 Feb 2026 09:52:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvBZR-00000003jD5-2L9C
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 09:52:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vvBZP-0004kN-HO; Wed, 25 Feb 2026 10:52:39 +0100
Message-ID: <b78fe423-6e5e-4173-b24e-c69f120479a1@pengutronix.de>
Date: Wed, 25 Feb 2026 10:52:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20260223153908.1867811-1-s.hauer@pengutronix.de>
 <9da6e1a2-0753-47dc-9193-dc349e866b11@pengutronix.de>
 <aZ6qrxsMDv9FU-P2@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <aZ6qrxsMDv9FU-P2@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_015241_621836_034CDA3E 
X-CRM114-Status: GOOD (  14.09  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Debug: add Kconfig option to abort autoboot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-02-25 08:54, Sascha Hauer wrote:
> On Tue, Feb 24, 2026 at 04:59:00PM +0100, Jonas Rebmann wrote:
>> Hi Sascha,
>>
>> On 2026-02-23 16:39, Sascha Hauer wrote:
>>> For debugging purposes it's sometimes useful when barebox doesn't boot
>>> through, but stops at the prompt.
>>
>> Isn't this already compile-time configurable by setting the defaultenv
>> autoboot to "abort"?
> 
> Yes, it is. It's just easier sometimes to just change a config, at least
> for Claude.

I think for the human, managing one option in two systems in different
ways makes things confusing. If the change is really needed, I suggest
the help text could explain that this overrides global.autoboot and that
configuration via defaultenv has further options for boot behavior.
Maybe also the autoboot global help text could be extended: "Autoboot
state. Possible values: countdown (default), abort, halt, menu, boot.
Ineffective if overwritten by CONFIG_DEBUG_AUTOBOOT_ABORT."

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


