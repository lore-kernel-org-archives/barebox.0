Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x233.google.com ([2a00:1450:400c:c05::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z3NiE-00056A-6k
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 12:05:31 +0000
Received: by wigg3 with SMTP id g3so15272012wig.1
 for <barebox@lists.infradead.org>; Fri, 12 Jun 2015 05:05:07 -0700 (PDT)
From: Peter Korsgaard <peter@korsgaard.com>
References: <1434005650-28131-1-git-send-email-s.hauer@pengutronix.de>
 <1434005650-28131-2-git-send-email-s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 14:05:04 +0200
In-Reply-To: <1434005650-28131-2-git-send-email-s.hauer@pengutronix.de>
 (Sascha Hauer's message of "Thu, 11 Jun 2015 08:54:07 +0200")
Message-ID: <87bngli13j.fsf@dell.be.48ers.dk>
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

 > This patch adds support for Reliable Asynchronous Transfer Protocol (RATP)
 > as described in RFC916.

 > Communication over RS232 is often unreliable as characters are lost or
 > misinterpreted. This protocol allows for a reliable packet based communication
 > over serial lines.

 > The implementation simply follows the state machine described in the RFC text.

Almost ;)

> +static int ratp_recv_pkt_data(struct ratp *ratp, void *data, uint8_t len,
 > +		int poll_timeout_ms)
 > +{
 > +	uint16_t crc_expect, crc_read;
 > +	int ret, i;
 > +
 > +	for (i = 0; i < len + 2; i++) {
 > +		ret = ratp_getc(ratp, data + i, poll_timeout_ms);
 > +		if (ret < 0)
 > +			return ret;
 > +	}
 > +
 > +	crc_expect = cyg_crc16(data, len);

Why crc16? RFC916 states that the checksum is the inverted 1s complement
16bit sum, E.G. like TCP/UDP/IP header checksums:

         Checksum Algorithm

            The checksum algorithm chosen is similar to that used by
            IP/TCP protocols [IP 81] [TCP 81].  This algorithm has shown
            itself to be both reliable and relatively easy to compute.
            The interested reader may refer to [TCP Checksum 78] for a
            more thorough discussion of its properties.

         The checksum algorithm is:

            SENDER

               The unsigned sum of the 16-bit words of the data portion
               of the packet is formed.  Any overflow is added into the
               lowest order bit.  This sum does not include the header
               portion of the packet.  For the purpose of building a
               packet for transmission the two octet checksum field is
               zero.  The sum formed is then bit complemented and
               inserted into the checksum field before transmission.

               If the total number of data octets is odd then the last
               octet is padded to the right (low order) with zeros to
               form a 16-bit word for checksum purposes.  This pad octet
               is not transmitted as part of the packet.

E.G. something like;

http://www.roman10.net/how-to-calculate-iptcpudp-checksumpart-2-implementation/

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
