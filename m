Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x232.google.com ([2a00:1450:4010:c07::232])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxUw7-0005Qv-Lb
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 08:12:21 +0000
Received: by mail-lf0-x232.google.com with SMTP id b81so126310326lfe.1
 for <barebox@lists.infradead.org>; Fri, 21 Oct 2016 01:11:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161021080728.4i3bulijw7wtxdqs@pengutronix.de>
References: <CABvwO2ARpHSzYE6Y3JrfFAQ2jEzw3EXfP36goL6kPogcBbNLKQ@mail.gmail.com>
 <201610210939.59537.jbe@pengutronix.de>
 <CABvwO2C0MZGk2CC-v=67-Og7n4SZqSpdCfiZBz0QZTTfeckp1w@mail.gmail.com>
 <201610210953.45417.jbe@pengutronix.de>
 <20161021080728.4i3bulijw7wtxdqs@pengutronix.de>
From: Javier Fileiv <javier.fileiv@gmail.com>
Date: Fri, 21 Oct 2016 10:11:55 +0200
Message-ID: <CABvwO2B_vjaFkyKZXx-gzCdwXVVJ-UeodD6MOsBLvPBT_6P7iw@mail.gmail.com>
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
Subject: Re: Loading kernel issues
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Borleis <jbe@pengutronix.de>

I thought that, by default, the NOR bootloader was setting it's config
files in NOR as well. But it seems that both bootloader are getting
the same config file.
I will switch to NOR, short the two right data lines, short them,
start the mini board. And at that point I will change back the
/env/config file. After that will re build barebox with that lines you
told me, commented out. And re flash barebox to NOR!

Thank you very much guys, will tell you my advance.

2016-10-21 10:07 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Fri, Oct 21, 2016 at 09:53:45AM +0200, Juergen Borleis wrote:
>> Hi Javier,
>>
>> On Friday 21 October 2016 09:41:15 Javier Fileiv wrote:
>> > I was looking to buy an ARM9 Jtag because it's what I
>> > though... I would need a JTAG.
>> >
>> > Regarding shorting the data lines... do you know exactly what would I
>> > need to do?
>>
>> Reading the datasheet of the used NAND device, find its datalines, find them on
>> the Mini2440, configure the board to boot from NOR, short two of the eight
>> datalines and power the board.
>
> The best would be to find two which are exactly next to each other so
> you can short circuit them with a knitting needle or similar.
>
> When you flash a new barebox to NOR flash make sure you flash one that
> doesn't get its environment from NAND, so comment out the following
> lines in the board file:
>
>         devfs_del_partition("env_raw");
>         devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
>         dev_add_bb_dev("env_raw", "env0");
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
