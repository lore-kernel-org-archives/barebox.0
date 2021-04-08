Delivery-date: Thu, 08 Apr 2021 17:29:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUWb9-0006YM-63
	for lore@lore.pengutronix.de; Thu, 08 Apr 2021 17:29:35 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUWb8-0007FY-Ee
	for lore@pengutronix.de; Thu, 08 Apr 2021 17:29:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fSuQicGlEx6uooZ3xZoKfznoPBMAPqmU5h80R+z2XlY=; b=YAyskznCOzAnqYIVqixD84nZC
	4/7+4ETF0CK0h/PzKhz4YVvx4cz5EaYQQ9VbUtdj7lHDTmOdGF+vsjZI0zKkq8ma6bnj7K0sGMVQ8
	fTc5RXhtvuOmQ7YusCubTQrj8sQv+HodXwspAjL1IbnRWrb56bH32XMY84XK3hFY9OASgzGrAylmZ
	ASAYmzI6sIGOLWuM0zl3lUZQESBkyJgk0upajaidn5iNgutV8mf7I8k0ZlaQmYbr/UiNDjK0UO8qu
	ifUNtHtJnR3F7ci2rrnAfE5FsYo5TfeNmcROlx0Pc3CuqBXFVt4SFRH8vh0HShnQKUQ3PwAwX4T/U
	DIpGRlZHw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUWZx-008P1a-ST; Thu, 08 Apr 2021 15:28:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUWZo-008Oym-H3
 for barebox@lists.infradead.org; Thu, 08 Apr 2021 15:28:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lUWZm-00075Q-LM; Thu, 08 Apr 2021 17:28:10 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lUWZm-00025O-6y; Thu, 08 Apr 2021 17:28:10 +0200
Date: Thu, 8 Apr 2021 17:28:10 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Michael Graichen <michael.graichen@hotmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20210408152810.GB13457@pengutronix.de>
References: <AM9P192MB0870C727E2A97796E63AC256AB629@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
 <20210325084255.GA11014@pengutronix.de>
 <AM9P192MB08704EEEF035BA67815E5991AB7D9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM9P192MB08704EEEF035BA67815E5991AB7D9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:46:37 up 49 days, 17:10, 97 users,  load average: 0.08, 0.14, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210408_162812_847463_06C889A4 
X-CRM114-Status: GOOD (  27.65  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/1] added support for zynq7000-fpga-manager
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Michael,

On Tue, 30 Mar 2021 12:05:31 +0000, Michael Graichen wrote:
> > I think, it would be fine to use only "zynq" instead of zynqmp for the
> > firmware loader/fpga manager. (I didn't compare the Zynq7000 and ZynqMP low
> > level interfaces for programming the FPGA, yet, but I guess that programming
> > the FPGA on the ZynqMP in EL3 instead of EL2/EL1 is actually the same as on
> > Zynq7000.) I am also ok with treating ZynqMP as a second class citizen in the
> > driver. 
> 
> As I compared
> https://www.xilinx.com/support/documentation/user_guides/ug585-Zynq-7000-TRM.pdf
> page 211ff and
> https://www.xilinx.com/support/documentation/user_guides/ug1085-zynq-ultrascale-trm.pdf
> page 261ff the programming of the PCAP seem to be similar, but PCAP is
> embedded in CSU/PMU on ZynqMP, which looks much more complex then DEVC on
> Zynq7000. But I don't know how much of CSUs functionality is acctually
> needed to programm the FPGA.

The PCAP behave similar and have similar registers and bits, but the register
layouts are completely different. It seems that for programming the FPGA on
the ZynqMP, one would at least have to configure the internal stream switch
and use CSU DMA engine for the image transfer. For encrypted bitstreams, the
AES engine in the CSU has to be used as well.

> 
> Is the CSU within ZynqMP used for something other than programming the
> firmware in barebox?

At the moment, Barebox doesn't directly use the CSU. Barebox is not even
allowed to access the CSU register. It uses SMCs via TF-A to instruct the
PMU-FW to program the FPGA. The PMU-FW then talks to the CSU for actually
programming the FPGA.

If Barebox would run as first stage bootloader, it might use the CSU to read
the PS version or might use some of the authentication/encryption features of
the CSU, but this is currently not the case.

Watch out for the overloaded term "firmware". The firmware manager in the
zynqmp-fpga driver in Barebox is able to _load_ a "firmware", in this case the
FPGA bitstream. The firmware-zynqmp driver is a driver to _talk to_ the PMU
firmware, which is a firmware that is already running on the system.

Michael

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

