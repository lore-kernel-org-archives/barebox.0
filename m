Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x233.google.com ([2607:f8b0:4002:c01::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkU84-00021R-QI
 for barebox@lists.infradead.org; Wed, 14 May 2014 08:01:33 +0000
Received: by mail-yh0-f51.google.com with SMTP id f73so1354953yha.38
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 01:01:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140514072002.GZ5858@pengutronix.de>
References: <CAOMZO5CMuVwZGB4DoZchuE7DCJU4=fMHZQugBzm3mPsQsqEamw@mail.gmail.com>
 <56785357-39FF-4F83-B1B3-F20C1D921A25@gmail.com>
 <20140514093212.ad026f36df7b0e4edaa54ba6@gmail.com>
 <CAOpc7mGG+BLF+Jc1Q3UsSa+R7f96FxS3Rd22mckvJsMq_8m=nA@mail.gmail.com>
 <20140514072002.GZ5858@pengutronix.de>
Date: Wed, 14 May 2014 10:01:10 +0200
Message-ID: <CAOpc7mHnhTLxqA9FABZMSRnf05Ocu99bFTkch1DH63O+7=U-yQ@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: Changing the baudrate via barebox prompt
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hmm, i thought more that "magicvars" could also iterate over the
devices and spits out their parameter. Internally, they are different,
but from a users perspective both things do something "magical": a
simple setting of a variable does some action.

Or am I'm mixing some things up?  After all I'm still not that deep
into barebox ...

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
