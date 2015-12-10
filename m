Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x22d.google.com ([2607:f8b0:4001:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6uew-00083Z-7e
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 06:24:59 +0000
Received: by mail-ig0-x22d.google.com with SMTP id mv3so9542238igc.0
 for <barebox@lists.infradead.org>; Wed, 09 Dec 2015 22:24:37 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1449565539-29374-1-git-send-email-s.hauer@pengutronix.de>
References: <1449565539-29374-1-git-send-email-s.hauer@pengutronix.de>
Date: Wed, 9 Dec 2015 22:24:37 -0800
Message-ID: <CAHQ1cqEiW3czDqrRWcSZ=3KWYe-yM=wCMJrF3JzgkXnADzRMRA@mail.gmail.com>
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
Subject: Re: [RFC] iodevice support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Dec 8, 2015 at 1:05 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> The following is something like a mixture of Linux IIO and hwmon support
> for the poor. I called it iodevice, but better names are appreciated.
> A iodevice has multiple channels, each providing a value like for
> example a temperature or a voltage. For each iodevice we provide device
> parameters to access the values from the commandline. The C API for a
> consumer consists of iochannel_get() to get a iochannel, and
> iochannel_get_value() to actually read a value.
> As drivers we currently have a LM75 temperature driver and a MCP342x ADC
> driver. Also there is a PT100 driver which itself is a consumer of
> another iodevice, a MCP342x in my case. This is more meant as an example
> since the voltage to temperature conversion function is board specific.


One feature that I would like to suggest/request in this API is
ability to give custom names to individual channels via DT. AFAIU, as
of right now, that the names are hard coded and assigned automatically
by the subsystem.

The reason why I am asking is because a fair number of use-cases for
Barebox that I see is as a board verification tool and as such it is
often used by people who may not be as familiar (if at all) with
Barebox, it's code and how "in_value%d_%s" relates to the actual
parameter reading they are trying to verify.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
