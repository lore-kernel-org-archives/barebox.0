Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REHqx-0007fv-WC
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 09:45:28 +0000
Received: by iarr31 with SMTP id r31so1316981iar.36
	for <barebox@lists.infradead.org>; Thu, 13 Oct 2011 02:45:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGiJk9eM=Fi+9uQEMM-64cZPGTjOvvBuy1jV60O_kXFmLD0J4Q@mail.gmail.com>
References: <CAGiJk9ePXFCwosqXUtU9yzGPmmZ5O6R_9gFtJXnJ9=DUnCpOxg@mail.gmail.com>
	<CAJeSw6BJqdBON18UDRsBJgPov5iqXKmYRROnEyoH6SkNhOJg3w@mail.gmail.com>
	<CAGiJk9eM=Fi+9uQEMM-64cZPGTjOvvBuy1jV60O_kXFmLD0J4Q@mail.gmail.com>
Date: Thu, 13 Oct 2011 11:45:26 +0200
Message-ID: <CAGiJk9fjG9veFsMSgA6y9dJ=sHGAa0jhStm86cfzC2VtkJHq=Q@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
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
Subject: Re: Booting Pandaboard from SD card
To: Fabian van der Werf <fvanderwerf@gmail.com>
Cc: barebox@lists.infradead.org

2011/10/13 Samuel Stirtzel <s.stirtzel@googlemail.com>:
>
> Well it is not the problem, I know that my kernel args are missing,
> I'm just missing informations about how i can pass them to the kernel.
Ok maybe I stated this wrong, because my env config has my bootargs,
I'm missing why they don't get loaded.

Currently this is my main problem:
running /env/bin/init...
not found

-- 
Regards
Samuel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
