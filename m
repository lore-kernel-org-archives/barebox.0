Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gAHkk-0004Dt-CZ
 for barebox@lists.infradead.org; Wed, 10 Oct 2018 16:54:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id d2-v6so6541420wro.7
 for <barebox@lists.infradead.org>; Wed, 10 Oct 2018 09:54:19 -0700 (PDT)
MIME-Version: 1.0
References: <20181009173805.26181-1-andrew.smirnov@gmail.com>
 <20181009173805.26181-10-andrew.smirnov@gmail.com>
 <1539190319.3515.48.camel@pengutronix.de>
In-Reply-To: <1539190319.3515.48.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 10 Oct 2018 09:54:06 -0700
Message-ID: <CAHQ1cqFMMOOg8KsR7wb01rchH2mQ0xxDQS8YtF2H=ww0VRvHew@mail.gmail.com>
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
Subject: Re: [PATCH v2 09/17] of: Port latest of_device_make_bus_id()
 implementation
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Oct 10, 2018 at 9:52 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Andrey,
>
> Am Dienstag, den 09.10.2018, 10:37 -0700 schrieb Andrey Smirnov:
> > Code implementing of_device_make_bus_id() in Barebox uses rather old
> > implementation from Linux kernel and has a very significan limitation
> > in that it will produce identical names for different DT nodes that
> > happen to have the same node name as well as "reg" property.
> >
> > > One such example, that tirggered this change, is "switch@0" nodes that
> > can be found in dts/src/arm/vf610-zii-dev-rev-c.dts
> >
> > This commit replaces original code with the current Linux kernel
> > implementation that traverses DT hierarchy from leaf node to its root
> > concatenating node names in the process.
>
> I think this change is what is breaking the imx_thermal driver here.
>
> This is a bad interaction between the AIODEV framework using the
> hwdev->device_node->name as the device name for the aoidev and the
> parent device getting the same name with this change. Before this
> change the tempmon platform device (which doesn't has an address by
> itself) would get a made up bus_no_reg_magic appended.
>
> Due to both devices having the same name, the device registration for
> the aiodev now fails. I've fixed it locally by not using the node name
> in the AIODEV framework, but you may prefer to fix this differently.
> Something to keep in mind for v3 of this series.
>

Thanks for finding this out! Added on my things to fix in v3 list.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
