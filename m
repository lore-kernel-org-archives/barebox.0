Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f48.google.com ([209.85.220.48])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TvD9C-0006TA-GY
 for barebox@lists.infradead.org; Tue, 15 Jan 2013 20:30:16 +0000
Received: by mail-pa0-f48.google.com with SMTP id fa1so326662pad.21
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2013 12:30:12 -0800 (PST)
Message-ID: <50F5BC50.50607@acm.org>
Date: Tue, 15 Jan 2013 12:30:08 -0800
From: "Paul B. Henson" <henson@acm.org>
MIME-Version: 1.0
References: <50F228E8.8050000@acm.org> <50F243F7.4080009@acm.org>
 <201301131147.10661.jbe@pengutronix.de>
In-Reply-To: <201301131147.10661.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: imx23evk NAND support
To: barebox@lists.infradead.org

On 1/13/2013 2:47 AM, Juergen Beisert wrote:

> IIRC ivt/non-ivt is relevant for the i.MX28 firmware, not for
> i.MX23.

Ah, okay. I actually have an mx28 eval board too, but started with the 
23 and haven't looked at the 28 board yet. I'm using the freescale tool 
to generate the bootstream, which knows it's intended for an i.MX23, 
you'd think (or wish I suppose) it would be smart enough not to generate 
the ivt versions if they're not relevant for that architecture.

> On the other hand, for some i.MX23 based systems the encryption must
> be enabled for the bootstream, but with an empty key.

The bootstream file seems to work fine from SD. I don't think it 
requires a different format for burning to NAND vs booting from SD, so I 
think I have a good file. The kobs-ng tool that burns the bootstream to 
NAND claims it is a valid image and that it is successfully burned, but 
then it just won't boot :(. I'd be interested in trying to burn it from 
barebox to see if that makes a difference, but a prerequisite for that 
is getting the NAND to work in barebox <sigh>.

It looks like the i.MX23/28 NAND support was ported from u-boot? u-boot 
doesn't actually support the i.MX23 board at the moment. There's 
somebody working on that, but they told me that the 23 and 28 NAND 
implementation is a bit different, and their current support for the 28 
needs to be updated to work with the 23. Perhaps the barebox NAND driver 
only works with the 28 board as well? I'll give it a try on that board 
and see what happens.

Has anyone successfully accessed the NAND on an i.MX23 board with barebox?


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
