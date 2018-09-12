Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g01P5-0002Dr-48
 for barebox@lists.infradead.org; Wed, 12 Sep 2018 09:25:45 +0000
Received: by mail-ed1-x534.google.com with SMTP id j62-v6so1186337edd.7
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2018 02:25:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAHQ1cqF3RA-EQ_NTtQtZgi+oJwGoCrTzG88O_=y3A5kYz4ueUQ@mail.gmail.com>
References: <20180821152001.5747-1-aleksander@aleksander.es>
 <20180821152001.5747-2-aleksander@aleksander.es>
 <CAHQ1cqF3RA-EQ_NTtQtZgi+oJwGoCrTzG88O_=y3A5kYz4ueUQ@mail.gmail.com>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 12 Sep 2018 11:25:09 +0200
Message-ID: <CAAP7ucL34qTVQn+E=7GBiQ2kxEHyWFJsNeF4BVo=zP+x9HMh_A@mail.gmail.com>
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hey Andrey,

Thanks for the review :) see some comments below.

>> +       /* Don't read anything on error or if 0 bytes were requested */
>> +       if (size > 0) {
>> +               adapter = i2c_get_adapter(i2c_read_req->bus);
>> +               if (!adapter) {
>> +                       printf("ratp i2c read ignored: i2c bus %u not found\n", i2c_read_req->bus);
>> +                       ret = -ENODEV;
>> +                       goto out;
>> +               }
>> +
>> +               client.adapter = adapter;
>> +               client.addr = i2c_read_req->addr;
>> +
>> +               if (i2c_read_req->flags & I2C_FLAG_MASTER_MODE) {
>> +                       ret = i2c_master_recv(&client, i2c_read_rsp->buffer, size);
>> +               } else {
>> +                       ret = i2c_read_reg(&client, reg | wide, i2c_read_rsp->buffer, size);
>> +               }
>> +               if (ret != size) {
>> +                       printf("ratp i2c read ignored: not all bytes read (%u < %u)\n", ret, size);
>> +                       ret = -EIO;
>> +                       goto out;
>> +               }
>> +               ret = 0;
>> +       }
>> +
>> +out:
>> +       if (ret != 0) {
>> +               i2c_read_rsp->data_size = 0;
>> +               i2c_read_rsp->errno = cpu_to_be32(ret);
>> +               i2c_read_rsp_len = sizeof(*i2c_read_rsp);
>> +       } else {
>> +               i2c_read_rsp->data_size = cpu_to_be16(size);
>> +               i2c_read_rsp->errno = 0;
>> +       }
>> +
>
> It looks like you can move:
>
> i2c_read_rsp->data_size = cpu_to_be16(size);
> i2c_read_rsp->errno = cpu_to_be32(ret);
>
> outside of if since it should work as intended for both cases (size is
> 0 if ret != 0).
>

Don't think I can do that. In the if (size > 0) {} just a bit above,
size is not modified but ret may become an error. We do want to make
sure 0 is returned as size when there is an error, so cannot move it
outside the if() as you suggest here.

-- 
Aleksander
https://aleksander.es

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
