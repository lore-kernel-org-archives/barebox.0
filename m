Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qy0-f177.google.com ([209.85.216.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P1dVY-00079e-Rw
	for barebox@lists.infradead.org; Fri, 01 Oct 2010 11:10:34 +0000
Received: by qyk31 with SMTP id 31so1521155qyk.15
	for <barebox@lists.infradead.org>; Fri, 01 Oct 2010 04:10:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <AANLkTikrna=mcBoayqbAezJdvuo1oUhs3XEUrf+W3kpA@mail.gmail.com>
References: <AANLkTi=k3qTJtQeuOMoBDJMrrR3DQbF7GunjT10FRDSW@mail.gmail.com>
	<AANLkTinsWzaMthMo2djN17hWUMG5+4K+Y-H-YZPs-q-H@mail.gmail.com>
	<201009291108.18378.jbe@pengutronix.de>
	<201009291123.19306.jbe@pengutronix.de>
	<AANLkTikrna=mcBoayqbAezJdvuo1oUhs3XEUrf+W3kpA@mail.gmail.com>
Date: Fri, 1 Oct 2010 16:40:25 +0530
Message-ID: <AANLkTikcCPfcaDAdmLajCY-Y9RQn=9gqz28VfZELfTb8@mail.gmail.com>
From: Gaurav Singh <gausinghnsit@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Failing to load Barebox Environment
To: Juergen Beisert <jbe@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi all,
Well turns out my character device inode values were being overwritten
by the NAND buffer contents... this was because I have to change
NAND_MAX_PAGESIZE from 2048 to 4096 ! I have a NAND on my board where
Page size is 4096.
It is working fine now - no need for a seperate envfs_nand_load function.

Thanks
Regards
Gaurav

On Thu, Sep 30, 2010 at 12:09 PM, Gaurav Singh <gausinghnsit@gmail.com> wro=
te:
> Hi Sascha, Juergen,
> I did a rather crude workaround for this. Copied the NAND partition
> containing the environment from NAND on startup into a file using
> run_command.
> run_command("cp /dev/env0 /env_temp",0);
> then
> envfs_load("/env_temp", "/env")
>
> This is working fine.
> I think - overall the enfs_load logic has to be tweaked for NAND devices.
>
> Now I wrote a new enfs_nand_load function - This basically reads a
> Page of NAND (which works fine if my env file is less than 4096 :))
> into the buffer and manipulates it to prepare the Environment
> correctly. So basically we can read the entire environment partition
> from NAND in one go and then manipulate it to prepare the env in RAM.
>
> int envfs_nand_load(char *filename, char *dir)
> {
> =A0 =A0 =A0 =A0struct envfs_super* super;
> =A0 =A0 =A0 =A0void *buf =3D NULL, *buf_free =3D NULL;
> =A0 =A0 =A0 =A0int envfd;
> =A0 =A0 =A0 =A0int fd, ret =3D 0;
> =A0 =A0 =A0 =A0char *str, *tmp;
> =A0 =A0 =A0 =A0int namelen_full;
> =A0 =A0 =A0 =A0unsigned long size;
>
> =A0 =A0 =A0 =A0envfd =3D open(filename, O_RDONLY);
> =A0 =A0 =A0 =A0if (envfd < 0) {
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0printf("Open %s %s\n", filename, errno_str=
());
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0return -1;
> =A0 =A0 =A0 =A0}
> =A0 =A0 =A0 =A0/* Reading a Page into Buf */
> =A0 =A0 =A0 =A0size =3D ENVFS_32(4096);
> =A0 =A0 =A0 =A0buf =3D xzalloc(size);
> =A0 =A0 =A0 =A0buf_free =3D buf;
> =A0 =A0 =A0 =A0printf("1\n");
> =A0 =A0 =A0 =A0ret =3D read(envfd, buf, size);
> =A0 =A0 =A0 =A0if (ret < size) {
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0perror("read");
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ret =3D errno;
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0goto out;
> =A0 =A0 =A0 =A0}
>
> =A0 =A0 =A0 =A0super =3D (struct envfs_super *)buf;
>
> =A0 =A0 =A0 =A0if ( ENVFS_32(super->magic) !=3D ENVFS_MAGIC) {
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0printf("envfs: wrong magic on %s\n", filen=
ame);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ret =3D -EIO;
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0goto out;
> =A0 =A0 =A0 =A0}
>
> =A0 =A0 =A0 =A0if (crc32(0, (unsigned char *)super, sizeof(struct envfs_s=
uper) - 4)
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 !=3D ENVFS_32(super->sb_crc)) {
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0printf("wrong crc on env superblock\n");
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ret =3D -EIO;
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0goto out;
> =A0 =A0 =A0 =A0}
>
> =A0 =A0 =A0 =A0void *buf2;
> =A0 =A0 =A0 =A0size =3D ENVFS_32(super->size);
> =A0 =A0 =A0 =A0/* Rest on ENV except Superblock to be kept in buf2 */
> =A0 =A0 =A0 =A0buf2 =3D (void *)((char *)buf + sizeof(struct envfs_super)=
);
>
> =A0 =A0 =A0 =A0if (crc32(0, (unsigned char *)buf2, size)
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 !=3D ENVFS_32(super->crc)) {
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0printf("wrong crc on env\n");
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ret =3D -EIO;
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0goto out;
> =A0 =A0 =A0 =A0}
>
> =A0 =A0 =A0 =A0while (size) {
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0struct envfs_inode *inode;
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0uint32_t inode_size, inode_namelen;
>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0inode =3D (struct envfs_inode *)buf2;
>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if (ENVFS_32(inode->magic) !=3D ENVFS_INOD=
E_MAGIC) {
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0printf("envfs: wrong magic=
 on %s\n", filename);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ret =3D -EIO;
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0goto out;
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0}
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0inode_size =3D ENVFS_32(inode->size);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0inode_namelen =3D ENVFS_32(inode->namelen);
>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0debug("loading %s size %d namelen %d\n", i=
node->data,
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0inode_size, inode_namelen);
>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0str =3D concat_path_file(dir, inode->data);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tmp =3D strdup(str);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0make_directory(dirname(tmp));
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0free(tmp);
>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0fd =3D open(str, O_WRONLY | O_CREAT | O_TR=
UNC, 0644);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0free(str);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if (fd < 0) {
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0printf("Open %s\n", errno_=
str());
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ret =3D fd;
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0goto out;
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0}
>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0namelen_full =3D PAD4(inode_namelen);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ret =3D write(fd, buf2 + namelen_full + si=
zeof(struct
> envfs_inode),
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0inode_size=
);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if (ret < inode_size) {
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0perror("write");
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ret =3D errno;
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0close(fd);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0goto out;
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0}
>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0close(fd);
>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0buf2 +=3D PAD4(inode_namelen) + PAD4(inode=
_size) +
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sizeof(str=
uct envfs_inode);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0size -=3D PAD4(inode_namelen) + PAD4(inode=
_size) +
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sizeof(str=
uct envfs_inode);
> =A0 =A0 =A0 =A0}
>
> =A0 =A0 =A0 =A0ret =3D 0;
> out:
> =A0 =A0 =A0 =A0close(envfd);
> =A0 =A0 =A0 =A0if (buf_free)
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0free(buf_free);
> =A0 =A0 =A0 =A0return ret;
> }
>
>
>
>
> On Wed, Sep 29, 2010 at 2:53 PM, Juergen Beisert <jbe@pengutronix.de> wro=
te:
>> Juergen Beisert wrote:
>>> Just a note:
>>>
>>> You configure:
>>> > >> devfs_add_partition("nand0", 0x00000, 0x200000, PARTITION_FIXED,
>>> > >> "self_raw"); dev_add_bb_dev("self_raw", "self0");
>>> > >> devfs_add_partition("nand0", 0x200000, 0x200000, PARTITION_FIXED,
>>> > >> "env_raw"); dev_add_bb_dev("env_raw", "env0");
>>>
>>> And then:
>>> > EVB2065> addpart /dev/nand0 4M(barebox)ro,2M(kernel)ro,-(root)
>>>
>>> Both must match!
>>>
>>> Try instead:
>>>
>>> EVB2065> addpart /dev/nand0 256k(barebox)ro,256k(env),2M(kernel)ro,-(ro=
ot)
>>>
>>> jbe
>>
>> Ups, sorry: 0x200000 !=3D 256k (didn't count the '0' right...)
>>
>> EVB2065> addpart /dev/nand0 2M(barebox)ro,2M(env),2M(kernel)ro,-(root)
>>
>> jbe
>>
>> --
>> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0| Juergen Beisert =A0 =A0 =A0 =A0 =A0 =A0 |
>> Linux Solutions for Science and Industry =A0 =A0 =A0| Phone: +49-8766-93=
9 228 =A0 =A0 |
>> Vertretung Sued/Muenchen, Germany =A0 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49=
-5121-206917-5555 |
>> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://www=
.pengutronix.de/ =A0|
>>
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
