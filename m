Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f41.google.com ([209.85.215.41])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XXRoS-0007M3-Kz
 for barebox@lists.infradead.org; Fri, 26 Sep 2014 09:27:41 +0000
Received: by mail-la0-f41.google.com with SMTP id s18so14190285lam.14
 for <barebox@lists.infradead.org>; Fri, 26 Sep 2014 02:27:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140904211419.ea6eae69a1e96d2cb9d3e20e@gmail.com>
References: <53C25B45.7010101@gmail.com>
 <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
 <CAOngqVV-PcbsowH9iOHXpxXNvJEb_k7KyWakQVVGT9FMm4iFLw@mail.gmail.com>
 <20140715110157.e505c7ad66ef5871b1ecf830@gmail.com>
 <CAOngqVVHG5+S68okE4kqU95FNtkxvJFtcZj0W2KmH=54XxdKTg@mail.gmail.com>
 <20140715142753.d2c6424ea6b2d1b810b0de73@gmail.com>
 <CAOngqVXSRuHmPL_Z73AfLPCdzitS7=kkViy2rJMvX1vvsiOhbw@mail.gmail.com>
 <20140716063002.GB23235@pengutronix.de>
 <CAOngqVUUZOeRToJp_6vvxqmB-x2D=VAHo=JntpfegQ03P5axgQ@mail.gmail.com>
 <20140904211419.ea6eae69a1e96d2cb9d3e20e@gmail.com>
Date: Fri, 26 Sep 2014 11:27:16 +0200
Message-ID: <CAOngqVV5qCVVOMrrfh705inrYAGz=b3+M7J+NSJ6_UY+4njpJA@mail.gmail.com>
From: PicoTCP <picotcp@tass.be>
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
Subject: Re: picotcp tftp support [was Adding IPv4 multicast support]
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>, PicoTCP <picotcp@tass.be>, Michele Di Pede <michele.di.pede@tass.be>

Antony Pavlov wrote:
> I see a barebox-related publication with nice pictures on the picotcp website  :)
>
>   http://www.picotcp.com/barebox-on-top-of-picotcp
>
> We are awaiting improved TFTP...
>

Hi Antony, hello all.

Michele just pushed a TFTP which provides support for multiple
sessions. API is slightly changed, to keep track of the sessions
themselves. Please refer to the example in test/examples/tftp.c, or to
the updated user manual.

Let us know if we can provide any support to help you progress with
the integration.

Regards,
-- 
Daniele + the picoTCP team

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
