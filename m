Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PsrnV-0001lL-NP
	for barebox@lists.infradead.org; Fri, 25 Feb 2011 07:09:06 +0000
Received: by vws7 with SMTP id 7so1236105vws.36
	for <barebox@lists.infradead.org>; Thu, 24 Feb 2011 23:09:04 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1298581839-15542-1-git-send-email-jbe@pengutronix.de>
References: <1298581839-15542-1-git-send-email-jbe@pengutronix.de>
Date: Fri, 25 Feb 2011 08:09:02 +0100
Message-ID: <AANLkTim1Gh4v672sXxg6PrPMPtbS1wPsQo-HbJfyRWAG@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] S3C24xx: NAND management changes to support booting from
	NAND
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Juergen,

On Thu, Feb 24, 2011 at 10:10 PM, Juergen Beisert <jbe@pengutronix.de> wrote:
> It seems there are more variants of the mini2440 in the wild than I ever
> thought.
>
> In order to support booting from NAND some important settings like NAND's page
> size and address cycle count must be known. These settings are provided by
> four external pins and can be read back from an register of the NFC. This
> patch set makes the S3C24xx NFC driver using these bits.
>
> Hopefully now all mini2440 variants can be booted from NAND without the need
> for special configurations.
Seems my board is somehow cursed. I apply those 2 patche up to the
next tree (also add slo wdown sdram timing)
but nothing helps. Board still doesn't boot from flash :(.
>
> Juergen
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>

thanks,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
icq: 290551086
web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
