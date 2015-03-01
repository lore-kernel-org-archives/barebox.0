Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4.altran.com ([194.98.79.92] helo=smtp5.altran.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YS6XP-0000eK-DQ
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 16:16:16 +0000
From: DI PEDE Michele <michele.dipede@altran.com>
Date: Sun, 1 Mar 2015 16:15:54 +0000
Message-ID: <66FFD9910051464CB128685455FE423D2FB77B@XMB-DCFR-31.europe.corp.altran.com>
References: <CAA4bVAHFEo=Si7NNXXFdR3vWyzpbVms8Txa8wy6MCS_aKyZVAA@mail.gmail.com>
 <1588230.G27jqyn2gQ@linux-small.site>
 <20150228210101.cfcbb70a472f7a910e19aada@gmail.com>
 <5243411.sF5OIl90BO@linux-small.site>,
 <20150301165425.ae74fe890992a1a47aac4294@gmail.com>
In-Reply-To: <20150301165425.ae74fe890992a1a47aac4294@gmail.com>
Content-Language: en-GB
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
Subject: RE: picotcp barebox integration
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>, LACAMERA Daniele <daniele.lacamera@altran.com>

On Sun 1 Mar 2015 16:54:25,
Antony Pavlov <antonynpavlov@gmail.com>  wrote:
> On Sun, 1 Mar 2015 01:29:56 +0100
> 
> DI PEDE Michele <michele.dipede@altran.com> wrote:
> > On Sat 28 Feb 2015 21:01:01
> 
> ...
> 
> > Please take a look at the application driven API.
> > 
> > In order to integrate our stack you should use the application driven API.
> > It is documented in user manual in section 3.12 (TFTP). In order to
> > receive a file the sequence should be:
> > session = pico_tftp_app_setup(&server_address, short_be(PICO_TFTP_PORT),
> > PICO_PROTO_IPV4, &synchro);
> > ret = pico_tftp_app_start_rx(session, filename);
> > ret = pico_tftp_get_file_size(session, &file_size);
> > if (ret)
> > printf("Information about file size has not been received"\n);
> > 
> > while (file_is_not_complete) {
> > 
> >         len = pico_tftp_get(session, buf, PICO_TFTP_PAYLOAD_SIZE);
> >         ....
> > 
> > }
> > 
> > The example contained in test/test_tftp_app_client.c demonstrate how to
> > use
> > the interface for application driven behaviour.
> 
> Hmm. I have tried pico_tftp_get() and now I have several questions:
> 
> 1. pico_tftp_get() has 3rd argument 'int32_t len'.
> This 'len' argument is actually unused. Can we just drop it?
No, current payload size is fixed to 512 as stated in TFTP specification but we plan to add also RFC 2348 to our features. Code to handle it is almost there, I need just some time to clean it up and perform validation test. We will release it soon.

> 
> 2. here is pico_tftp_get() example fragment:
> 
>         len = pico_tftp_get(session, buf, PICO_TFTP_PAYLOAD_SIZE);
>         if (len < 0) {
>             fprintf(stderr, "Failure in pico_tftp_get\n");
>             close(fd);
>             countdown = 1;
>             continue;
>         }
>         ret = write(fd, buf, len);
> 
> pico_tftp_get() copies data to pointer buf. But the first four bytes are not
> raw file data but tftp header fields.
> E.g. I receiving GPL text via pico_tftp_get():
> 
> first tftp data block:
> 
> 00000000: 00 03 00 01 09 09 20 20 20 20 47 4e 55 20 47 45    ......    GNU
> GE 00000010: 4e 45 52 41 4c 20 50 55 42 4c 49 43 20 4c 49 43    NERAL
> PUBLIC LIC 00000020: 45 4e 53 45 0a 09 09 20 20 20 20 20 20 20 56 65   
> ENSE...       Ve ...
> 000001d0: 65 72 61 6c 20 50 75 62 6c 69 63 0a 4c 69 63 65    eral
> Public.Lice 000001e0: 6e 73 65 20 69 73 20 69 6e 74 65 6e 64 65 64 20   
> nse is intended 000001f0: 74 6f 20 67 75 61 72 61 6e 74 65 65              
>  to guarantee
> 
> second tftp data block:
> 
> 00000000: 00 03 00 02 65 65 64 6f 6d 20 74 6f 20 73 68 61    ....eedom to
> sha 00000010: 72 65 20 61 6e 64 20 63 68 61 6e 67 65 20 66 72    re and
> change fr 00000020: 65 65 0a 73 6f 66 74 77 61 72 65 2d 2d 74 6f 20   
> ee.software--to 00000030: 6d 61 6b 65 20 73 75 72 65 20 74 68 65 20 73 6f  
>  make sure the so 00000040: 66 74 77 61 72 65 20 69 73 20 66 72 65 65 20 66
>    ftware is free f
> 
> Here is a original GPL file dump, you can see that substring ' your fr'
> is missed in data received by pico_tftp_get():
> 
> 000001d0:  20 50 75 62 6c 69 63 0a  4c 69 63 65 6e 73 65 20   Public.License
> 000001e0:  69 73 20 69 6e 74 65 6e  64 65 64 20 74 6f 20 67  is intended to
> g 000001f0:  75 61 72 61 6e 74 65 65  20 79 6f 75 72 20 66 72  uarantee
> your fr <<<<<< 00000200:  65 65 64 6f 6d 20 74 6f  20 73 68 61 72 65 20 61 
> eedom to share a <<<<<< 00000210:  6e 64 20 63 68 61 6e 67  65 20 66 72 65
> 65 0a 73  nd change free.s 00000220:  6f 66 74 77 61 72 65 2d  2d 74 6f 20
> 6d 61 6b 65  oftware--to make
> 
> So data block written to file by
>     ret = write(fd, buf, len);
> is corrupted.
> 
> Could you please check this?
This is a BUG. Unfortunately pico_tftp_get returns the raw data but it is expected to returns only payload data. Thanks for signalling it. I've fixed the bug in the development branch. The commit is

commit 82fac1df278ab98cf0c46644de0fd608e341e5dd
Author: Michele Di Pede <michele.di.pede@tass.be>
Date:   Sun Mar 1 16:28:51 2015 +0100

    pico_tftp_get now return only payload data (issue #221)

> 
> 3. there is the find_session_by_socket() function. It uses special
> tftp_sessions list. Can we simply use priv field in 'struct pico_socket'
> for this purpose?
> 
> 
> 4. How I can determine "End Of File reached" situation after pico_tftp_get()
> call?
On receiver side you detect the End Of File reached when the size of the received packed less than the PACKET SIZE (it could be even 0). For this reason when you are the sender you have to send an extra packet with a len of 0 for payload (TFTP protocol rules).
Section 3.12.16 of the user manual show how to detect the EOF condition.
Currently this rule is explained only in the general description of TFTP (intro of 3.12) and in the example code. I'll make the description of TFTP a bit more verbose.

The lines that follow the snippet you showed above (extracted by test_tftp_app_client.c) are:

    if (ret < 0) {
        fprintf(stderr, "Error in write\n");
        pico_tftp_abort(session, TFTP_ERR_EXCEEDED, "File write error");
        close(fd);
        countdown = 1;
        continue;
    }
    printf("Written %" PRId32 " bytes to file (synchro=%d)\n", len, *synchro);

    if (len != PICO_TFTP_PAYLOAD_SIZE) {
        close(fd);
        printf("Transfer complete!\n");
        countdown = 1;
    }

First if block show how to signal an error to the remote side. Last if block how to recognize that the file transfer has been completed.

> 
> -- 
> Best regards,
>   Antony Pavlov

Best regards,
Michele Di Pede
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
