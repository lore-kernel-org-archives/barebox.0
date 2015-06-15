Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4OgA-0003nk-IR
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 07:19:35 +0000
Received: by wiwd19 with SMTP id d19so65653396wiw.0
 for <barebox@lists.infradead.org>; Mon, 15 Jun 2015 00:19:12 -0700 (PDT)
From: Peter Korsgaard <peter@korsgaard.com>
References: <1434005650-28131-1-git-send-email-s.hauer@pengutronix.de>
 <1434005650-28131-2-git-send-email-s.hauer@pengutronix.de>
 <87bngli13j.fsf@dell.be.48ers.dk>
 <20150615051202.GJ6325@pengutronix.de>
Date: Mon, 15 Jun 2015 09:19:08 +0200
In-Reply-To: <20150615051202.GJ6325@pengutronix.de> (Sascha Hauer's message of
 "Mon, 15 Jun 2015 07:12:02 +0200")
Message-ID: <87h9q9mob7.fsf@dell.be.48ers.dk>
MIME-Version: 1.0
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
Subject: Re: [PATCH 1/4] Add Reliable Asynchronous Transfer Protocol
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

Hi,

>> > +	crc_expect = cyg_crc16(data, len);
 >> 
 >> Why crc16? RFC916 states that the checksum is the inverted 1s complement
 >> 16bit sum, E.G. like TCP/UDP/IP header checksums:

 > Indeed CRC16 is not correct here according to RFC916. We can implement
 > the original checksum algorithm, I'm not sure if that's a good idea
 > though. Plain checksumming does not detect lost 0 characters.

True, but missing/extra 0 characters would normally get caught by the
length mismatch, so I'm not sure it is a real problem.

-- 
Venlig hilsen,
Peter Korsgaard 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
