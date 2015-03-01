Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4.altran.com ([194.98.79.92] helo=smtp5.altran.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YRrlw-0005Wk-Cb
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 00:30:18 +0000
From: DI PEDE Michele <michele.dipede@altran.com>
Date: Sun, 1 Mar 2015 01:29:56 +0100
Message-ID: <5243411.sF5OIl90BO@linux-small.site>
In-Reply-To: <20150228210101.cfcbb70a472f7a910e19aada@gmail.com>
References: <CAA4bVAHFEo=Si7NNXXFdR3vWyzpbVms8Txa8wy6MCS_aKyZVAA@mail.gmail.com>
 <1588230.G27jqyn2gQ@linux-small.site>
 <20150228210101.cfcbb70a472f7a910e19aada@gmail.com>
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
Subject: Re: picotcp barebox integration
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>, Daniele Lacamera <daniele.lacamera@altran.com>

On Sat 28 Feb 2015 21:01:01
 Antony Pavlov <antonynpavlov@gmail.com> wrote:
> On Wed, 28 Jan 2015 14:35:19 +0100
> 
> DI PEDE Michele <michele.dipede@altran.com> wrote:
> > Hi all,
> > HEAD of development branch contains the required API for a smooth
> > integration with Barebox.
> > User manual contains all the information for use them. There is also a
> > small demo TFTP client that show how to use the application driven
> > interface test/test_tftp_app_client.c. To build it just do make clean;
> > make test; cd test; make.
> > Now should be easy to integrate out stack in Barebox code.
> > Let me know how the integration effort proceed. We could provide proper
> > support from our side to speed up things.
> 
> I have tryed to integrate picotcp tftp support into barebox.
Unfortunately I made a mistake in my commit (test/test_tftp_app_client.c was 
missing due to the wrong insertion of the binary executable); I do apologize.
It contains the call sequence you need for the integration in Barebox. Please 
take a look at test/test_tftp_app_client.c

[...]
> IMHO the tftp interface introduced in this picotcp development branch
> can't be easely integrated into barebox tftp filesystem support code.
Please take a look at the application driven API.

> 
> I'll illustrate this on sample barebox tftp file download session:
> 
>     barebox user setup network parameters and run 'tftp <filename>' command;
> 
>     the tftp commands mounts tftp-server rootdir to barebox
> "/.tftp_tmp_path"; and start file copy operation
> (/.tftp_tmp_path/<filename> -> /<filename>).
> 
>     copy operation consists of standard calls (very schematically):
> 
>       srcfd = open(<source file>, O_RDONLY);
>       ...
>       dstfd = open(<destination file>, O_WRONLY | O_CREAT | O_TRUNC);
>       ...
>       stat(srcfd, ...); /* just determine source file size if possible */
>       ...
>       while (r = read(srcfd, buffer, 4096)) {
>           write(dstfd, buffer, r);
>           ...
>       }
> 
>       so reading data block from tftp-server is made by initiative of
> barebox command. The barebox tftp support code realize all standard calls
> (open, stat, read, write ...).
> 
>       But let's examine picotcp tftp API. Picotcp tftp downloading file code
> consist of
> 
>            priv->session = pico_tftp_session_setup(&tpriv->server_ip4,
> PICO_PROTO_IPV4); ...
>            pico_tftp_start_rx(priv->session, short_be(PICO_TFTP_PORT),
> filename, cb_tftp_rx_opt, priv);
> 
>        But pico_tftp_start_rx() tries to download WHOLE FILE from
> tftp-server. I see no means to suspend data transfer initiated by 
> pico_tftp_start_rx(), so I have no means to realize necessary read() and
> write() calls.
You tried to use the wrong API.
In order to integrate our stack you should use the application driven API. It 
is documented in user manual in section 3.12 (TFTP). In order to receive a 
file the sequence should be:
session = pico_tftp_app_setup(&server_address, short_be(PICO_TFTP_PORT), 
PICO_PROTO_IPV4, &synchro);
ret = pico_tftp_app_start_rx(session, filename);
ret = pico_tftp_get_file_size(session, &file_size);
if (ret)
printf("Information about file size has not been received"\n);

while (file_is_not_complete) {
        len = pico_tftp_get(session, buf, PICO_TFTP_PAYLOAD_SIZE);
        ....
}

The example contained in test/test_tftp_app_client.c demonstrate how to use 
the interface for application driven behaviour.

Best regards
Michele Di Pede


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
