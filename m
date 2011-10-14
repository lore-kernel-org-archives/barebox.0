Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REc1m-0007ok-Ip
	for barebox@lists.infradead.org; Fri, 14 Oct 2011 07:17:59 +0000
Received: by eye3 with SMTP id 3so1081303eye.36
	for <barebox@lists.infradead.org>; Fri, 14 Oct 2011 00:17:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGiJk9fjG9veFsMSgA6y9dJ=sHGAa0jhStm86cfzC2VtkJHq=Q@mail.gmail.com>
References: <CAGiJk9ePXFCwosqXUtU9yzGPmmZ5O6R_9gFtJXnJ9=DUnCpOxg@mail.gmail.com>
	<CAJeSw6BJqdBON18UDRsBJgPov5iqXKmYRROnEyoH6SkNhOJg3w@mail.gmail.com>
	<CAGiJk9eM=Fi+9uQEMM-64cZPGTjOvvBuy1jV60O_kXFmLD0J4Q@mail.gmail.com>
	<CAGiJk9fjG9veFsMSgA6y9dJ=sHGAa0jhStm86cfzC2VtkJHq=Q@mail.gmail.com>
Date: Fri, 14 Oct 2011 09:17:56 +0200
Message-ID: <CAJeSw6DOo1_s1kJMjAOeTDv6XVhc0EgbHHZd_HN+uB3K8n+4BQ@mail.gmail.com>
From: Fabian van der Werf <fvanderwerf@gmail.com>
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
To: Samuel Stirtzel <s.stirtzel@googlemail.com>
Cc: barebox@lists.infradead.org

>
> Currently this is my main problem:
> running /env/bin/init...
> not found

init is part of the default barebox environment, you can find it in
the source tree under defaultenv. If you have your own environment it
should bring its own init.

Regards,
Fabian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
