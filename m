Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x232.google.com ([2607:f8b0:4002:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT5pF-0001oa-Rp
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 11:51:51 +0000
Received: by mail-yw0-x232.google.com with SMTP id l19so66890097ywc.2
 for <barebox@lists.infradead.org>; Mon, 16 Jan 2017 03:51:28 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170116113857.m6xdak4ir53pzo42@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
 <CAAfyv35FkKMn_7LKbcd3gXsTdMqR1F9WKr_WRVb+TF0AB+5LWg@mail.gmail.com>
 <20170116113857.m6xdak4ir53pzo42@pengutronix.de>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 16 Jan 2017 12:51:27 +0100
Message-ID: <CAAfyv35e+YBreAMio-KU9J1LJ4iGpSVzPa6bup-QurRCOjHxug@mail.gmail.com>
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
Subject: Re: i.MX7 support
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 16, 2017 at 12:38 PM, Robert Schwebel
<r.schwebel@pengutronix.de> wrote:
> On Mon, Jan 16, 2017 at 12:02:47PM +0100, Belisko Marek wrote:
>> > One issue remaining is that I am currently unable to reset the board
>> > using the watchdog or the barebox reset command. Out of ideas, will
>> > fix later.
>>
>> imx7 has know problem that cannot be reset by softreset only by
>> external signal as Fabio suggested.
>
> Do you have a reference what exactly is broken? I didn't find anything
> reset- or watchdog related in the errata sheet.
Sorry no reference. We have developed board on imx7 and hit the same issue.
>
> rsc
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
