Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fswdf-0003SW-8M
 for barebox@lists.infradead.org; Thu, 23 Aug 2018 20:55:33 +0000
Received: by mail-ed1-x531.google.com with SMTP id h4-v6so4480555edi.6
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 13:55:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180822074635.wfst65srfuqne7l6@pengutronix.de>
References: <20180821152001.5747-1-aleksander@aleksander.es>
 <20180821152001.5747-2-aleksander@aleksander.es>
 <20180822074635.wfst65srfuqne7l6@pengutronix.de>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu, 23 Aug 2018 22:54:58 +0200
Message-ID: <CAAP7ucKR_tmawkX=DTO2bnzhT+L2A-AhChCXddgMEd5FCKpOYA@mail.gmail.com>
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
Subject: Re: [PATCH 1/4] ratp: implement i2c read/write support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>> +struct ratp_bb_i2c_read_request {
>> +     struct ratp_bb header;
>> +     uint16_t buffer_offset;
>> +     uint8_t  bus;
>> +     uint8_t  addr;
>
> I wonder how we see the RATP support. If it's for adhoc debugging then
> bus/addr is fine. The caller should have no expectations that the bus
> number is constant though. Likewise for the address which might change
> across different board revisions.
>
> Should we have support for resolving names, which could be provided by
> aliases in dt?
>
> We could still add name resolving support later as a separate call, I
> just thought that now is the time to think how we proceed.
>

I truly have no opinion here, but if name resolving is added at some
point I can either update this operation or even add a new one.

-- 
Aleksander
https://aleksander.es

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
