Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wn3A1-0005X6-FK
 for barebox@lists.infradead.org; Wed, 21 May 2014 09:50:10 +0000
Received: by mail-lb0-f177.google.com with SMTP id s7so1336849lbd.22
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 02:49:47 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <20140521132228.aeeab4590eb6731f0654c785@gmail.com>
References: <1400606875.26128.1.camel@mars> <20140520180830.GA4321@omega>
 <1400617760.26128.270.camel@mars> <20140521034438.GA10482@omega>
 <1400659362.4772.13.camel@mars>
 <20140521132228.aeeab4590eb6731f0654c785@gmail.com>
Date: Wed, 21 May 2014 11:49:43 +0200
Message-ID: <1400665783.4772.37.camel@mars>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2] commands: add 'findstr' to search file for string
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony

On Wed, 2014-05-21 at 13:22 +0400, Antony Pavlov wrote:
> On Wed, 21 May 2014 10:02:42 +0200
> Christoph Fritz <chf.fritz@googlemail.com> wrote:
> 
> > Command 'findstr' can be for example used to find string
> 
> We already have some commands with string.h style names:
>   memcmp, memcpy, memset
> 
> Can we use 'strstr' name for your new command?

Sure, anyone with any objections?

> Another proposition:
>  can we add <offset from file start> and <no more N characters to
> search> parameters?
> 
> Using these parameters you can speed up your search and use your
> command with /dev/mem.

Ok, I can add this to a [PATCH v3], anyone with any objections?

> > "MAC=1C:BA:8C:F3:82:BB" in file /dev/eeprom0 to set an
> > appropriate environment variable:
> > 
> >  $ findstr -o 16 -l 17 -t eth0.ethaddr pcm051_eth0_MAC= /dev/eeprom0
> > 
> > Usage: findstr [OPTIONS] <STRING> <FILE>
> > Find ASCII string in file and print it
> > -o <offset>     set offset of string which gets printed
> > -l <length>     set length of string which gets printed
> > -t <var>        print into variable instead of stdio

 Thanks
  -- Christoph


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
