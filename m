Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9vqD-0000Dc-6F
 for barebox@lists.infradead.org; Tue, 09 Oct 2018 17:30:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id l6-v6so2311275wrt.1
 for <barebox@lists.infradead.org>; Tue, 09 Oct 2018 10:30:31 -0700 (PDT)
MIME-Version: 1.0
References: <20181008063542.18709-1-andrew.smirnov@gmail.com>
In-Reply-To: <20181008063542.18709-1-andrew.smirnov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 9 Oct 2018 10:30:17 -0700
Message-ID: <CAHQ1cqFoLOKw+uGF2CF9sO_NMJXCX=5kGFO7FCfcE41n4V9jvw@mail.gmail.com>
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
Subject: Re: [PATCH 00/16]
To: Barebox List <barebox@lists.infradead.org>

On Sun, Oct 7, 2018 at 11:35 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> Everyone:
>
> Patches in this series are a result of my work on porting Linux code
> for MV88E6xxx switches to Barebox.
>
>      - Patch 1 is loosely related header fix
>
>      - Patch 2 adds clocksource support for ARM global time, needed on
>        VF610 in order to get an accurate clocksource. MV88E6xxx EEPROM
>        supporte code turned out to be dependent on that.
>
>      - Pathes 3 and 4 are clocksource related fixes
>
>      - Patches 5, 6, 7, 8 update the device naming scheme used by
>        Barebox driver code. Old scheme couldn't handle devices created
>        for DT nodes with identical names. This was the case on ZII
>        VF610 Development Board Rev. C which had two switch devices.
>
>     - Patch 9 is documentation/small code fix for generic MDIO bus
>       code
>
>     - Patches 10, 11 bring needed preprocessor constants from Linux kernel
>
>     - Patch 12 prevents PHYs masked by MDIO bus's phy_maks from being
>       probed
>
>     - Patch 13 allows custom platform deviecs to be attached to an MDIO bus
>
>     - Patch 14 exposes internal MDIO bus on MV88E6xxx devices
>
>     - Patch 15 support for EEPROM devices attached to MV88E6xxx devices
>
>     - Patch 16 exposes ports that don't have a PHY attached as
>       "virtual" PHY devices (RPU2 needs this code to properly
>       configure port connected to FEC)
>
> NOTE: This is quite a mix and I am more than happy to split this
> series in several if current patch grouping is problematic.
>
> Tested on the following H/W:
>
>      - ZII i.MX6Q RDU2, MV88E6352 switch
>      - ZII i.MX51 RDU1, MV88E6161 switch
>      - ZII i.MX7D RPU2, MV88E6352 switch
>      - ZII VF610 CFU1, MV88E6352 switch
>      - ZII VF610 SPU3, MV88E6390X switch
>      - ZII VF610 Development Board Rev. C, MV88E6390X switch x 2
>
> Feedback is welcome!
>
> Thanks,
> Andrey Smirnov
>

This is really embarrassing that I forgot to have an actual subject
line for this series. Will fix in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
