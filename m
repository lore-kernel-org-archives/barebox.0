Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x234.google.com ([2607:f8b0:4001:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yp1lP-0001rC-Vq
 for barebox@lists.infradead.org; Sun, 03 May 2015 21:49:28 +0000
Received: by igbyr2 with SMTP id yr2so71986888igb.0
 for <barebox@lists.infradead.org>; Sun, 03 May 2015 14:49:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <554684FB.9090707@pengutronix.de>
References: <1430683999-5910-1-git-send-email-andrew.smirnov@gmail.com>
 <554684FB.9090707@pengutronix.de>
Date: Sun, 3 May 2015 14:49:06 -0700
Message-ID: <CAHQ1cqHNQASC5+xZ-Fb46nC_2_vQO4Ee6Vdn9r_4U-K-99XxLQ@mail.gmail.com>
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
Subject: Re: [PATCH 1/8] Makefile.lib: Fix i.MX image size after generation
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Sun, May 3, 2015 at 1:28 PM, Marc Kleine-Budde <mkl@pengutronix.de> wrote:
> On 05/03/2015 10:13 PM, Andrey Smirnov wrote:
>> If called with '-b' option 'imx-image' tool prepends barebox header to
>> the image, but the tool does not fill the data at image size offset
>> correctly. Call 'fix_size', right after 'imx-image' to fix that.
>
> What about fixing the tool instead? The imx-image tool in used
> imx-habv4, too, see images/Makefile.imxhabv4.
>

I wasn't sure what would be the most appropriate way to fix this, so I
chose the path of a least resistance. But now that I know that the
tool is used in multiple places -- I agree -- it makes more sense to
fix the problem at its root. I will send the updated patch shortly.

Andrey

> Marc
>
> --
> Pengutronix e.K.                  | Marc Kleine-Budde           |
> Industrial Linux Solutions        | Phone: +49-231-2826-924     |
> Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
> Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
