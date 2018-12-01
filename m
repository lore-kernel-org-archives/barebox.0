Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gStFM-0004Ag-19
 for barebox@lists.infradead.org; Sat, 01 Dec 2018 00:35:01 +0000
Received: by mail-wm1-x343.google.com with SMTP id y1so590983wmi.3
 for <barebox@lists.infradead.org>; Fri, 30 Nov 2018 16:34:47 -0800 (PST)
MIME-Version: 1.0
References: <20181120084100.8737-1-s.hauer@pengutronix.de>
 <20181120084100.8737-3-s.hauer@pengutronix.de>
 <CAHQ1cqG4FSRnz_UkihPP-1mswx=hw=9V92-vS=tnF+oW5WmSVQ@mail.gmail.com>
 <20181130073559.fingjrjaomumdlwj@pengutronix.de>
In-Reply-To: <20181130073559.fingjrjaomumdlwj@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 30 Nov 2018 16:34:34 -0800
Message-ID: <CAHQ1cqEYxRy4UeJwAkwuHTdaPBUTnG9pVC=NBj+sUTGvzEStuw@mail.gmail.com>
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
Subject: Re: [PATCH 2/3] ARM: i.MX: Add max_load_size option to boards that
 will need it
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Nov 29, 2018 at 11:36 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Hi Andrey,
>
> On Thu, Nov 29, 2018 at 10:11:47PM -0800, Andrey Smirnov wrote:
> >
> > The change above bricks Barebox on RDU2 because load size of 0x11000
> > isn't enough. Tracing what hdr->boot_data.size was set to prior to
> > this series ends up with 0x1d000 as a number, using which appears to
> > fix the problem on the real board, so we probably should max_load_size
> > to at least that much. I am hoping you can fix it on your end, but let
> > me know if you need me to generate a fixup patch.
>
> I adjusted it to 0x31000 which is the maximum of free space in the SRAM.
>

Just checked the latest upstream/next and there's a still a bit of a
twist to this saga, I am afraid :-). The limit of 0x31000 works just
fine, but there a silly typo here:

https://git.pengutronix.de/cgit/barebox/tree/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg?h=next#n3

specifically "00x31000" instead of "0x31000", which is interpreted by
do_max_load_size() as "0". Changing the code to the following:

data->max_load_size = strtoul(argv[1], &end, 0);
if (*end != '\0') {
    fprintf(stderr, "illegal max_load_size \"%s\"\n", argv[1]);
    return -EINVAL;
}

fixed the problem, however we might want to do that for all of the
other places that do similar parsing and don't check the result
(do_dcd_offset(), do_loadaddr()) . I'll put together a patch for that
shortly.

> BTW I am not really happy that we can't detect when we run out of space
> in the SRAM. I am aware of that and hopefully we can find a solution,
> but currently we have nothing more than just a few ideas.
>

Agreed and good to know.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
