Delivery-date: Thu, 27 Jan 2022 19:57:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nD9xJ-00F9Wg-Of
	for lore@lore.pengutronix.de; Thu, 27 Jan 2022 19:57:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nD9xI-0005mj-8c
	for lore@pengutronix.de; Thu, 27 Jan 2022 19:57:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NdYdQ49y/jmNTVsFN0XNKZTH8oMixlhheG5G/UOQ67U=; b=vkeIE0AsZ6GUdF
	R02TElpDbP47o0PQMBPRYrcXZbZsCIj7c9udB+olaI10gOaUSIgZEbMvhLmGzWTPSn+zB8hIt4iu/
	8hGLm+W4RxBklWE/MVFoqcpb4jYF65ENckI5WrBjQuS4yCOiC5tjySP4i/NNb7ubzhsiXSJNqebPJ
	6BCxkxkUlbmNH9fJujOsl7IIy18jHTEzVaAK6IVgXFwNWSzZv1v/0FVrffXkmc38zRlGGlc5yKQd7
	0Dkq6QtQsp/xEKmMnLO4BQyKjT116Spc753NRJz23S9sH57kfEoarAVpqebN6Bgcrc6TfG3eMM9Er
	dy3gTscGmw5jswcVBzbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nD9u5-00GsQa-LW; Thu, 27 Jan 2022 18:53:53 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nD9ty-00GsQF-Vg
 for barebox@lists.infradead.org; Thu, 27 Jan 2022 18:53:49 +0000
Received: by mail-lj1-x234.google.com with SMTP id b14so5778890ljb.0
 for <barebox@lists.infradead.org>; Thu, 27 Jan 2022 10:53:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JVf1uM7IaMeVgRYUs0FHCtPJ+Uq2/kRKLJviBn/u74s=;
 b=yQAP9WSbD999k42fhs0XWy2NUbtm7c7faZUbEIcqWsEbBDF8vlZ3n4EK03eaWxEiko
 ZNNAS5lZW6LLXHEVWx2vIzineyGcQmsaCM84ctdi7KPT9lNilBAbvLIMS/3zWXthxEBC
 2GRy/3pazF/1fUm9L0l9xSs6Sa8fWOCZ3CHlJ7Lpdcy0KadC39wVy0fkgryjtBvrqaIp
 Ji7L/8/Dt6UjiWL17YTLuGZV5+J+zvk4kHCPkcWFHFA9lt8skAvw9E173RpTG+UphcnA
 R63sNhq/kDRS8onu3XZ0HSOBfkTV+wbV6WObxoDhm/nn7kM+d8sPfrwBff3X9t0dPPuJ
 r4EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JVf1uM7IaMeVgRYUs0FHCtPJ+Uq2/kRKLJviBn/u74s=;
 b=EcF3mkXWZy3UA7Faxga+uchj/q3hEAZBxap5vRUBNvPDmvyHbfKRzNmXr+aYqB1EuC
 9ccCybNET1pLfFkd+jn8pDee5VPcJ+1J19iCyVr3/JBpQFdm/l2nFdnaYa+RWQ39m1u2
 ExEP9yO2vDkJ9CUnhPaXnSd2k8tBzDLCryFt8QkIUQdm0b5/08RGRjAwmW163gFXH+au
 Zk8oXGc36C7UA8j5LEYOddqRPLfO7bRmpQwd9dWX+j2bDufmx8+eyv1i6dy4+SRfmkRg
 fwwSJP7rtc+jnamkI7rS3Usp6JL4o1NtrXdsWnN3lcyyAWZpv0qfV7Ke70y/X7PXLNWr
 9low==
X-Gm-Message-State: AOAM530ITOfjWi/VuB9+aVGMEasyJiSa8i0BGmcB1J0OCX2mBxt2NKup
 xSxhXKbMTe8YZ7qZO0DAHpjn3bNA3aJheD4xFGzR+hN1kHY=
X-Google-Smtp-Source: ABdhPJwnlx9xRFKKwdxDmmEupmeL0/qaKV1VgC1xFz/RWBqIJ4tBDxSn6/80Uk89fHRwWo2gWfKlWwzapy0WjI/Zoeg=
X-Received: by 2002:a2e:a781:: with SMTP id c1mr2276877ljf.527.1643309624775; 
 Thu, 27 Jan 2022 10:53:44 -0800 (PST)
MIME-Version: 1.0
References: <20220124100458.2924679-1-m.olbrich@pengutronix.de>
 <20220124100458.2924679-4-m.olbrich@pengutronix.de>
 <20220126075727.GD23490@pengutronix.de>
 <20220126093513.GI11273@pengutronix.de>
 <20220126101524.GH23490@pengutronix.de>
 <20220126111609.GK11273@pengutronix.de>
 <CAMHeXxPJJuC=MrtXp2iiQUnozs+2p1a8nC40LZd0Wf43t_g0Og@mail.gmail.com>
 <20220127123924.GQ23490@pengutronix.de>
In-Reply-To: <20220127123924.GQ23490@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Thu, 27 Jan 2022 10:53:33 -0800
Message-ID: <CAMHeXxMCGpq4+jkhU0hOHy6x6sn9a2=gUW_rfhfF9UtSZZNpDQ@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_105347_278233_804B934A 
X-CRM114-Status: GOOD (  36.45  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] state: support backend-diskuuid / backend-offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Could a linux dtb fixup be done in barebox?  This way userspace will
only have existing properties: storage devices with partitions
node(s), and barebox-state backend that points to a partition.  In
this case, the partition node was added by Barebox.

In fact, Barebox already does partition fixups exactly like this.  So
I think this would probably already happen.  It won't work if Linux
dtb does not have the storage device at all, as the partition fixup
considers that an error.  But maybe the Linux dtb will have the
storage device node?  Or if it doesn't have it because the storage is
"too dynamic" to put into the dts, then another fixup can make the
node.

On Thu, Jan 27, 2022 at 4:39 AM Sascha Hauer <sha@pengutronix.de> wrote:
>
> On Wed, Jan 26, 2022 at 04:18:51PM -0800, Trent Piepho wrote:
> > DTS ranges are usually specified as <offset> <length> in one property.
> > The sizes of offset and length fields are done with the #address-cells
> > and #size-cells of the bus the node is on.  I.e., barebox state
> > shouldn't be defining if offsets or lengths are 32 or 64 bits, it
> > should/is done by the device the offset or length refers to.
> >
> > Like the normal 'reg' property in most nodes for register banks, or
> > the various "ranges" properties map an address space in the current
> > node to one in another node.
> >
> > This backend-diskuuid, backend-offset, and backend-length seems like a
> > custom alternative version of a range that is specific to barebox
> > state.  Also, if the backend is a partition defined in the dts, then
> > the node of the partition specifies its size.  But if the partition is
> > found by uuid, then the barebox state device specifies the size of the
> > partition.  Seems inconsistent.
> >
> > It seems like there should be a better and more consistent way to do this.
> >
> > Here's an idea.  Identify the device by uuid and use existing
> > fixed-partitions.  Example:
> >
> > {
> >     compatible = "storage-by-uuid";
> >     uuid = "abcd-1234";
> >     // Everything below here already exists and is unchanged
> >     partitions {
> >         compatible = "fixed-partitions";
> >         barebox_state: state@1000 {
> >             label = "barebox-state";
> >             reg = <0x1000 0x200>;
> >         };
> >         barebox_env: env@1200 {
> >             label = "barebox-env";
> >             reg = <0x1200 0x1000>;
> >         };
> >     };
> > };
> >
> > When the top level node here is found, the matching device is located
> > by uuid and contents of the node are added to that device.  Adding
> > fixed partitions is done the same way it's already done.  The
> > difference is we can specify the device by uuid instead of needing to
> > locate the path of the exact hardware device.
>
> We discussed this approach internally as well and decided for the way
> Michael has implemented it for two reasons. First it is easier to
> implement, if not in barebox, but in Linux userspace where we need to
> parse that binding as well. Second we don't need another barebox custom
> binding when we extend the existing custom binding.
>
> The fact that with the current approach we have to know that an
> arbitrary property contains a 64bit value rather than the default 32bit
> made me think if the approach of having a compatible =
> "storage-by-uuid" driver is really the better one. I know that Ahmad
> agrees here as well :)
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

