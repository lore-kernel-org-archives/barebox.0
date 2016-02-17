Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x235.google.com ([2607:f8b0:400c:c05::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aW8tj-0005Q0-SF
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 20:40:32 +0000
Received: by mail-vk0-x235.google.com with SMTP id k196so26129166vka.0
 for <barebox@lists.infradead.org>; Wed, 17 Feb 2016 12:40:11 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160217085231.GS19372@pengutronix.de>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
 <1455672559-25061-18-git-send-email-andrew.smirnov@gmail.com>
 <20160217085231.GS19372@pengutronix.de>
Date: Wed, 17 Feb 2016 12:40:10 -0800
Message-ID: <CAHQ1cqEO2L=FBF1s5mOf1G+kGbXfFU7_jSDEzQ==R94DhtT4OQ@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 17/18] [RFC] nvmem: Add nvmem-ro-of-blob driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Feb 17, 2016 at 12:52 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, Feb 16, 2016 at 05:29:18PM -0800, Andrey Smirnov wrote:
>> Add a driver that implements provisions to allow creationg of fake nvmem
>> devices and cells whose data comes from device tree  blob.
>
> This seems quite flexible. Care to create and post this for the kernel?
> It would be much better if we can agree on a binding used by the kernel
> aswell.

Sure, sounds reasonable

>
> Sascha
>
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
